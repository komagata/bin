#!/usr/bin/env ruby

require 'date'
require 'fileutils'

FileUtils.mkdir_p("#{ENV['HOME']}/backup/#{Date.today}")
FileUtils.mv(
  Dir.glob("#{ENV['HOME']}/Downloads/*"),
  "#{ENV['HOME']}/backup/#{Date.today}/"
)
