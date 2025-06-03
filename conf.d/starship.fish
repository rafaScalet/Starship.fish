if type -q starship
    starship init fish | source

    if set --query starship_transient_prompt_value
        function starship_transient_prompt_func
            echo -n $starship_transient_prompt_value
        end

        enable_transience
    end
end
