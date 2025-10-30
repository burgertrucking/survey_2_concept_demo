return {
    sink = function(cutscene)
        cutscene:text("* (The bathroom sink.)")
        cutscene:text("* (Though it drains fine, the cupboard below is empty for easy access in case of emergency.)")
    end,

    shower = function(cutscene)
        cutscene:text("* (It's the shower.)")
        cutscene:text("* (On the shelves are an unscented soap bar, a pint-sized bottle of apple-scented shampoo...)")
        cutscene:text("* (...and a gallon-sized bottle of pet shampoo.)")
    end,

    toilet = function(cutscene, event)
        cutscene:text("test text")
    end,
}
