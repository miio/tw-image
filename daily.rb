# -*- encoding: utf-8 -*-
require "twitter"
require "#{File.dirname(__FILE__)}/config"

IMAGE_DIR = "#{File.dirname(__FILE__)}/images"
FILE_NAMES = ["sun","mon","tue","wed","thu","fri","sat"]

# get today's day of the week.
day_of_week = FILE_NAMES[Time.now.wday]
file = File.open("#{IMAGE_DIR}/#{day_of_week}.jpg")

# update image
Twitter.update_profile_image(file)
