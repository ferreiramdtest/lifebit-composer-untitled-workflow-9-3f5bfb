nextflow.enable.dsl=2

include { phewas # 1 } from './modules/phewas # 1/module.nf'

workflow {
input1 = Channel.fromPath(params.input1).splitCsv()
input2 = Channel.of(params.input2)
phewas # 1(input1, input2)
}
