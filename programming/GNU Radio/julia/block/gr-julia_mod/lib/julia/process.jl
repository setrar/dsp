function process(input::Vector{Float32}, output::Vector{Float32})
    for i in 1:length(input)
        output[i] = 2 * input[i]  # Example operation
    end
end
