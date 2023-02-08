function onEvent(name, value1, value2)
    if name == 'Middle Arrow Positions' then
        --Moves BF Notes to Opponent side.
        noteTweenX('bfTween1', 4, 412, 0.01, 'linear');
        noteTweenX('bfTween2', 5, 527, 0.01, 'linear');
        noteTweenX('bfTween3', 6, 643, 0.01, 'linear');
        noteTweenX('bfTween4', 7, 761, 0.01, 'linear');
        --Moves Opponent Notes to BF side.
        noteTweenX('dadTween1', 0, 100, 0.01, 'linear');
        noteTweenX('dadTween2', 1, 215, 0.01, 'linear');
        noteTweenX('dadTween3', 2, 956, 0.01, 'linear');
        noteTweenX('dadTween4', 3, 1071, 0.01, 'linear');
    end     
end