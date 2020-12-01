## Secret Diary

# First attempt

My first attempt at secret diary has led me to realise that it is not necessary to delegate every responsibility to other classes, as it can leave the original class with little to do other than interpret user instructions. This can be a necessary feature but not appropriate here. I came to this conclusion as there is a lot of repeated code in the SecretDiary and Security classes, which means the SecretDiary class itself could (should?) be responsible for its own security (state of 'secretness').

This would reduce repeated code and lower coupling.
