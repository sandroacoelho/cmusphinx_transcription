import audiotools as at
import pocketsphinx as ps

#E.g:
#http://www.repository.voxforge1.org/downloads/Main/Trunk/AcousticModels/Sphinx/voxforge-en-r0_1_3.tar.gz
hmmd = '/<your_path>/models/voxforge-en-r0_1_3/model_parameters/voxforge_en_sphinx.cd_cont_3000'
# http://sourceforge.net/projects/cmusphinx/files/Acoustic and Language Models/US English HUB4 Language Model/HUB4_trigram_lm.zip
lmd = '/<your_path>/models/language_model.arpaformat.DMP'
# http://downloads.sourceforge.net/project/cmusphinx/Acoustic and Language Models/US English HUB4 Language Model/cmudict.hub4.06d.dict.zip
dictd = '/<your_path>/models/cmudict.hub4.06d.dict'

speechRec = ps.Decoder(hmm = hmmd, lm = lmd, dict = dictd)
#make sure that your audio file has a wav format, sample format 16 bit PCM mono 
wavFile = open('/<your_path>/your_audio_file.wav', 'rb')
wavFile.seek(44)
speechRec.decode_raw(wavFile)
result = speechRec.get_hyp()
print result[0]
