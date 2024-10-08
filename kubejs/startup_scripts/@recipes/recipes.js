StartupEvents.registry('item', e => {
    e.create('empty_spawn_egg')
        .displayName("Empty Spawn Egg")
        .maxStackSize(64)
})

StartupEvents.modifyCreativeTab('minecraft:spawn_eggs', event => {
    event.add('kubejs:empty_spawn_egg')
})
