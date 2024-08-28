Creating a GNU Radio block using Julia involves setting up the block framework in C++ and then using Julia for signal processing or other computations. Currently, GNU Radio is primarily designed to work with C++ and Python, but you can integrate Julia by writing a custom C++ block that interfaces with Julia code. Here’s a general approach to creating such a block:

### 1. Set Up the GNU Radio Block Skeleton
First, create a skeleton for your GNU Radio block using the GNU Radio ModTool. This tool generates the necessary files and directories for your new block.

```bash
gr_modtool newmod julia_mod
cd gr-julia_mod
gr_modtool add julia_block
```

### 2. Modify the Block to Use Julia
After setting up the skeleton, you need to modify the generated C++ files to integrate Julia. Let’s say your block is named `julia_block`. Here’s how you can proceed:

#### 2.1. Initialize Julia in Your Block
Modify the C++ implementation file (`lib/julia_block_impl.cc`) to include the necessary Julia headers and initialize Julia.

**Include Julia Header:**

At the top of the file, include the Julia header:

```cpp
#include <julia.h>
```

**Initialize and Shutdown Julia:**

Inside the constructor and destructor of your block, initialize and shut down Julia:

```cpp
namespace gr {
  namespace julia_mod {

    julia_block_impl::julia_block_impl()
      : gr::sync_block("julia_block",
              gr::io_signature::make(1, 1, sizeof(float)),
              gr::io_signature::make(1, 1, sizeof(float)))
    {
        // Initialize Julia
        jl_init();
    }

    julia_block_impl::~julia_block_impl()
    {
        // Shutdown Julia
        jl_atexit_hook(0);
    }
```

#### 2.2. Call Julia Functions
You can now call Julia functions from within the work function, where the signal processing happens:

```cpp
int
julia_block_impl::work(int noutput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
{
    const float *in = (const float *) input_items[0];
    float *out = (float *) output_items[0];

    // Example: Use Julia to process data
    jl_value_t *array_type = jl_apply_array_type((jl_value_t*)jl_float32_type, 1);
    jl_array_t *julia_input = jl_ptr_to_array_1d(array_type, (void*)in, noutput_items, 0);
    jl_array_t *julia_output = jl_ptr_to_array_1d(array_type, (void*)out, noutput_items, 0);

    // Assuming you've defined a Julia function 'process' that processes the data
    jl_function_t *process = jl_get_function(jl_main_module, "process");
    jl_call2(process, (jl_value_t*)julia_input, (jl_value_t*)julia_output);

    // Consume noutput_items from input and produce the same amount on output
    return noutput_items;
}
```

#### 2.3. Write the Julia Function
Create a Julia function in a separate file that performs the actual computation. For example, create a `process.jl` file:

```julia
function process(input::Vector{Float32}, output::Vector{Float32})
    for i in 1:length(input)
        output[i] = 2 * input[i]  # Example operation
    end
end
```

You will need to ensure this Julia file is loaded when Julia initializes.

#### 2.4. Load the Julia Script
In the C++ constructor, add code to load the Julia script:

```cpp
jl_eval_string("include(\"/path/to/process.jl\")");
```

### 3. Build and Install the Block
Now, you can build and install the block:

```bash
mkdir build
cd build
cmake ..
make
sudo make install
```

### 4. Use the Block in GNU Radio
Once the block is built and installed, you can use it in GNU Radio Companion (GRC) by adding it to your flowgraph.

### Summary
This method integrates Julia into a GNU Radio block, allowing you to leverage Julia's capabilities within GNU Radio. The core idea is to create a GNU Radio block in C++ and use Julia to perform the heavy lifting in signal processing or other tasks.

## Logs

```
cmake -DCMAKE_INSTALL_PREFIX=/opt/homebrew ..
```
> Returns
```powershell
-- The CXX compiler identification is AppleClang 15.0.0.15000309
-- The C compiler identification is AppleClang 15.0.0.15000309
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
-- Found Threads: TRUE  
-- Found PkgConfig: /opt/local/bin/pkg-config (found version "0.29.2") 
-- Checking for module 'gmp'
--   Found gmp, version 6.3.0
-- Found GMP: /opt/local/lib/libgmpxx.dylib  
-- Using GMP.
-- Found MPLIB: /opt/local/lib/libgmpxx.dylib  
-- Found Boost: /opt/homebrew/lib/cmake/Boost-1.85.0/BoostConfig.cmake (found suitable version "1.85.0", minimum required is "1.85.0") found components: date_time program_options system regex thread 
-- Found Volk: Volk::volk  
-- User set python executable /opt/homebrew/Cellar/gnuradio/3.10.9.2_8/libexec/venv/bin/python
-- Found PythonInterp: /opt/homebrew/Cellar/gnuradio/3.10.9.2_8/libexec/venv/bin/python (found version "3.12.4") 
-- Found PythonLibs: /opt/local/Library/Frameworks/Python.framework/Versions/3.12/lib/libpython3.12.dylib (found suitable exact version "3.12.1") 
-- Performing Test HAVE_VISIBILITY_HIDDEN
-- Performing Test HAVE_VISIBILITY_HIDDEN - Success
-- Performing Test HAVE_WARN_SIGN_COMPARE
-- Performing Test HAVE_WARN_SIGN_COMPARE - Success
-- Performing Test HAVE_WARN_ALL
-- Performing Test HAVE_WARN_ALL - Success
-- Performing Test HAVE_WARN_NO_UNINITIALIZED
-- Performing Test HAVE_WARN_NO_UNINITIALIZED - Success
-- Found Git: /opt/local/bin/git  
-- Found Doxygen: /opt/local/bin/doxygen (found version "1.9.8") found components: doxygen dot 
-- Using install prefix: /opt/homebrew
-- Building for version: 1.0.0.0 / 1.0.0
-- No C++ unit tests... skipping
<string>:3: SyntaxWarning: invalid escape sequence '\W'
-- PYTHON and GRC components are enabled
-- Python checking for pygccxml - found
-- Found PythonInterp: /opt/homebrew/Cellar/gnuradio/3.10.9.2_8/libexec/venv/bin/python  
-- Found PythonLibs: /opt/local/Library/Frameworks/Python.framework/Versions/3.12/lib/libpython3.12.dylib
-- Performing Test HAS_FLTO_THIN
-- Performing Test HAS_FLTO_THIN - Success
-- Found pybind11: /opt/homebrew/include (found version "2.13.5")
<string>:3: SyntaxWarning: invalid escape sequence '\W'
-- Configuring done
CMake Warning (dev):
  Policy CMP0068 is not set: RPATH settings on macOS do not affect
  install_name.  Run "cmake --help-policy CMP0068" for policy details.  Use
  the cmake_policy command to set the policy and suppress this warning.

  For compatibility with older versions of CMake, the install_name fields for
  the following targets are still affected by RPATH settings:

   gnuradio-julia_mod

This warning is for project developers.  Use -Wno-dev to suppress it.

-- Generating done
-- Build files have been written to: /Users/valiha/Developer/dsp/programming/GNU Radio/julia/gr-julia_mod/build
```

```
sudo make install
```
> Returns:
```powershell
Password:
[ 20%] Built target gnuradio-julia_mod
[ 20%] Built target pygen_apps_9a6dd283c3de653fbca500f9721f634f
[ 30%] Built target doxygen_target
[ 50%] Built target pygen_python_julia_mod_7b62685ea28558eaa473dbf40c75376d
[ 50%] Built target copy_module_for_tests
[ 60%] Built target extracted_docstrings
[ 70%] Built target julia_mod_docstrings
[100%] Built target julia_mod_python
Install the project...
-- Install configuration: "Release"
-- Installing: /usr/local/lib/cmake/gnuradio-julia_mod/gnuradio-julia_modConfig.cmake
-- Installing: /usr/local/include/gnuradio/julia_mod/api.h
-- Installing: /usr/local/include/gnuradio/julia_mod/julia_block.h
-- Installing: /usr/local/lib/libgnuradio-julia_mod.1.0.0.0.dylib
-- Installing: /usr/local/lib/libgnuradio-julia_mod.1.0.0.dylib
-- Installing: /usr/local/lib/libgnuradio-julia_mod.dylib
-- Installing: /usr/local/lib/cmake/gnuradio-julia_mod/gnuradio-julia_modTargets.cmake
-- Installing: /usr/local/lib/cmake/gnuradio-julia_mod/gnuradio-julia_modTargets-release.cmake
-- Installing: /usr/local/lib/cmake/gnuradio-julia_mod/gnuradio-julia_modConfig.cmake
-- Installing: /usr/local/share/doc/gr-julia_mod/xml
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/index.xml
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/combine.xslt
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/doxyfile.xsd
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/compound.xsd
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/namespacestd.xml
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/index.xsd
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/xml.xsd
-- Installing: /usr/local/share/doc/gr-julia_mod/xml/Doxyfile.xml
-- Installing: /usr/local/share/doc/gr-julia_mod/html
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_bd.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/splitbar.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/graph_legend.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/doxygen.css
-- Installing: /usr/local/share/doc/gr-julia_mod/html/graph_legend.md5
-- Installing: /usr/local/share/doc/gr-julia_mod/html/index.html
-- Installing: /usr/local/share/doc/gr-julia_mod/html/sync_off.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/doxygen.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/sync_on.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_hd.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/doc.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/bc_s.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/nav_g.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/nav_f.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tabs.css
-- Installing: /usr/local/share/doc/gr-julia_mod/html/closed.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/minusd.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/splitbard.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/folderopend.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_s.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_a.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/plusd.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/plus.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_b.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/nav_fd.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/navtree.css
-- Installing: /usr/local/share/doc/gr-julia_mod/html/navtree.js
-- Installing: /usr/local/share/doc/gr-julia_mod/html/graph_legend.html
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_sd.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/navtreeindex0.js
-- Installing: /usr/local/share/doc/gr-julia_mod/html/folderopen.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/folderclosed.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/nav_hd.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/nav_h.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_h.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/folderclosedd.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/docd.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/resize.js
-- Installing: /usr/local/share/doc/gr-julia_mod/html/open.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/navtreedata.js
-- Installing: /usr/local/share/doc/gr-julia_mod/html/dynsections.js
-- Installing: /usr/local/share/doc/gr-julia_mod/html/tab_ad.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/minus.svg
-- Installing: /usr/local/share/doc/gr-julia_mod/html/bc_sd.png
-- Installing: /usr/local/share/doc/gr-julia_mod/html/jquery.js
-- Installing: /usr/local/lib/python3.12/site-packages/gnuradio/julia_mod/__init__.py
-- Installing: /usr/local/lib/python3.12/site-packages/gnuradio/julia_mod/__init__.pyc
-- Installing: /usr/local/lib/python3.12/site-packages/gnuradio/julia_mod/__init__.pyo
-- Installing: /usr/local/lib/python3.12/site-packages/gnuradio/julia_mod/julia_mod_python.cpython-312-darwin.so
-- Installing: /usr/local/share/gnuradio/grc/blocks/julia_mod_julia_block.block.yml
```

The error you're encountering in your YAML file is due to incorrect indentation or formatting within the file. Specifically, the error message "mapping values are not allowed in this context" suggests that there is an issue with how the parameters are defined, likely related to indentation or the use of special characters.

Here's a corrected version of your YAML file:

```yaml
id: julia_mod_julia_block
label: julia_block
category: '[julia_mod]'

templates:
  imports: from gnuradio import julia_mod
  make: julia_mod.julia_block(${sample_rate}, ${frequency})

parameters:
  - id: sample_rate
    label: Sample Rate
    dtype: float
    default: 1.0e6
    
  - id: frequency
    label: Frequency
    dtype: float
    default: 100.0e3
```

### Key Points to Check:

1. **Indentation**: Ensure that your indentation is consistent and uses spaces (not tabs). YAML is sensitive to indentation.
2. **Parameters**: Each parameter block should be correctly indented under `parameters:`, with each field (`id`, `label`, `dtype`, `default`) correctly indented under the corresponding parameter.
3. **String Handling**: If you have any string parameters, ensure they are properly quoted.

### Explanation:
- **id**: The internal name used to reference the parameter within the code.
- **label**: The name that will appear in the GNU Radio Companion (GRC) GUI.
- **dtype**: The data type of the parameter (e.g., `float`, `int`, `string`).
- **default**: The default value for the parameter.

### Example Block Definition:

```yaml
id: julia_mod_julia_block
label: julia_block
category: '[julia_mod]'

templates:
  imports: from gnuradio import julia_mod
  make: julia_mod.julia_block(${sample_rate}, ${frequency})

parameters:
  - id: sample_rate
    label: Sample Rate
    dtype: float
    default: 1.0e6
    
  - id: frequency
    label: Frequency
    dtype: float
    default: 100.0e3
```

This corrected YAML file should resolve the `yaml.scanner.ScannerError` and work correctly in GNU Radio Companion (GRC).

<img src=images/julia_block.png	 width='' height='' > </img>
<img src=images/reload_blocks.png width='' height='' > </img>

# References

GNU Radio Manual and C++ API Reference  3.10.9.1
> The Free & Open Software Radio Ecosystem

- [ ] [Build Instructions and Information](https://www.gnuradio.org/doc/doxygen/build_guide.html)
