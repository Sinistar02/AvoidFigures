///@desc 게임오버로
file = file_text_open_write("death count.txt")
file_text_write_real(file,global.deathCount)
file_text_close(file)

file = file_text_open_write("play count.txt")
file_text_write_real(file,global.playCount)
file_text_close(file)

room_goto(mgame_over)