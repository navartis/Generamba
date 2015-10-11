#!/usr/bin/ruby

require 'liquid'
require 'tilt'

class Generamba::FileGenerator
	def initialize
	end

	# TODO: generate h and m files
	def createElement(type)
		template = Tilt.new(File.dirname(__FILE__) + '/templates/' + type + '.m.liquid')
		module_info = {}
		module_info['name'] = "Test Module"
		module_info['fileName'] = "TestModule"
		module_info['description'] = "Test module to test scripts"
		module_info['viewType'] = "Controller"

		developer = { 'name' => "Andrey Zarembo",'company' => "Rambler & Co" }

		scope = { 'year' => '2015', 'date' => '12.12.2015', 'developer' => developer, 'module_info' => module_info,'prefix' => 'RCM' }

		output = template.render(scope)
		return output
	end
end