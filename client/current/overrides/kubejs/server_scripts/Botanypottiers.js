onEvent('recipes', event => {
  event.shaped('1x ftb-power-pots:power_pot_mk1', [
    ' C ',
    'BPB',
    'III'
  ], {
    C: 'mekanism:basic_control_circuit',
    B: 'mekanism:basic_energy_cube',
    P: '#botanypots:hopper_botany_pots',
    I: '#forge:ingots/copper'
  }),
    event.shaped('1x ftb-power-pots:power_pot_mk2', [
      ' C ',
      'BPB',
      'III'
    ], {
      C: 'mekanism:advanced_control_circuit',
      B: 'mekanism:advanced_energy_cube',
      P: 'ftb-power-pots:power_pot_mk1',
      I: '#forge:ingots/steel'
    }),
    event.shaped('1x ftb-power-pots:power_pot_mk3', [
      ' C ',
      'BPB',
      'III'
    ], {
      C: 'mekanism:elite_control_circuit',
      B: 'mekanism:elite_energy_cube',
      P: 'ftb-power-pots:power_pot_mk2',
      I: '#forge:ingots/osmium'
    }),
    event.shaped('1x ftb-power-pots:power_pot_mk4', [
      ' C ',
      'BPB',
      'III'
    ], {
      C: 'mekanism:ultimate_control_circuit',
      B: 'mekanism:ultimate_energy_cube',
      P: 'ftb-power-pots:power_pot_mk3',
      I: '#forge:ingots/refined_obsidian'
    })
})