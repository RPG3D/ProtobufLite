

target("ProtobufLite")
	set_kind("static")
	add_files(
	  "src/google/protobuf/any_lite.cc",
	  "src/google/protobuf/arena.cc",
	  "src/google/protobuf/extension_set.cc",
	  "src/google/protobuf/generated_enum_util.cc",
	  "src/google/protobuf/generated_message_table_driven_lite.cc",
	  "src/google/protobuf/generated_message_util.cc",
	  "src/google/protobuf/implicit_weak_message.cc",
	  "src/google/protobuf/io/coded_stream.cc",
	  "src/google/protobuf/io/io_win32.cc",
	  "src/google/protobuf/io/strtod.cc",
	  "src/google/protobuf/io/zero_copy_stream.cc",
	  "src/google/protobuf/io/zero_copy_stream_impl.cc",
	  "src/google/protobuf/io/zero_copy_stream_impl_lite.cc",
	  "src/google/protobuf/message_lite.cc",
	  "src/google/protobuf/parse_context.cc",
	  "src/google/protobuf/repeated_field.cc",
	  "src/google/protobuf/stubs/bytestream.cc",
	  "src/google/protobuf/stubs/common.cc",
	  "src/google/protobuf/stubs/int128.cc",
	  "src/google/protobuf/stubs/status.cc",
	  "src/google/protobuf/stubs/statusor.cc",
	  "src/google/protobuf/stubs/stringpiece.cc",
	  "src/google/protobuf/stubs/stringprintf.cc",
	  "src/google/protobuf/stubs/structurally_valid.cc",
	  "src/google/protobuf/stubs/strutil.cc",
	  "src/google/protobuf/stubs/time.cc",
	  "src/google/protobuf/wire_format_lite.cc"
	)
	
	add_includedirs("src")

	set_languages("c11", "cxx14")
	
	add_defines("GOOGLE_PROTOBUF_NO_RTTI=1")
	
	if (is_os("windows")) then
		--set_kind("shared")
		--add_defines("PROTOBUF_USE_DLLS=1")
		--add_defines("LIBPROTOBUF_EXPORTS=1")
		add_cxflags("/MD")
	else
		add_defines("HAVE_PTHREAD=1")
	end
	
	if (is_os("android")) then
		--set_kind("shared")	

	end



