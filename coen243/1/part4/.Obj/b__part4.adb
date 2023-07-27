pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__part4.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__part4.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E078 : Short_Integer; pragma Import (Ada, E078, "system__os_lib_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__exceptions_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__containers_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "ada__io_exceptions_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "ada__numerics_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "ada__strings_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "ada__strings__maps_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__strings__maps__constants_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "interfaces__c_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "system__object_reader_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "system__dwarf_lines_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__soft_links__initialize_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__traceback__symbolic_E");
   E031 : Short_Integer; pragma Import (Ada, E031, "system__img_int_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "system__img_uns_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__strings__utf_encoding_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "ada__tags_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__strings__text_buffers_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "ada__streams_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__file_control_block_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "system__finalization_root_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "ada__finalization_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__file_io_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__text_io_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__img_llli_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__img_lli_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E104 := E104 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E130 := E130 - 1;
         F2;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E048 := E048 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E074 := E074 + 1;
      Ada.Numerics'Elab_Spec;
      E032 := E032 + 1;
      Ada.Strings'Elab_Spec;
      E060 := E060 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E062 := E062 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E065 := E065 + 1;
      Interfaces.C'Elab_Spec;
      E085 := E085 + 1;
      System.Exceptions'Elab_Spec;
      E026 := E026 + 1;
      System.Object_Reader'Elab_Spec;
      E089 := E089 + 1;
      System.Dwarf_Lines'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E078 := E078 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E021 := E021 + 1;
      E013 := E013 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E047 := E047 + 1;
      System.Img_Int'Elab_Spec;
      E031 := E031 + 1;
      E008 := E008 + 1;
      System.Img_Uns'Elab_Spec;
      E069 := E069 + 1;
      E055 := E055 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E110 := E110 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E118 := E118 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E108 := E108 + 1;
      Ada.Streams'Elab_Spec;
      E106 := E106 + 1;
      System.File_Control_Block'Elab_Spec;
      E134 := E134 + 1;
      System.Finalization_Root'Elab_Spec;
      E133 := E133 + 1;
      Ada.Finalization'Elab_Spec;
      E131 := E131 + 1;
      System.File_Io'Elab_Body;
      E130 := E130 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E104 := E104 + 1;
      System.Img_Llli'Elab_Spec;
      E142 := E142 + 1;
      System.Img_Lli'Elab_Spec;
      E139 := E139 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_part4");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\Amdgh\Documents\Ada-practice\coen243\1\part4\.Obj\part4.o
   --   -LC:\Users\Amdgh\Documents\Ada-practice\coen243\1\part4\.Obj\
   --   -LC:\Users\Amdgh\Documents\Ada-practice\coen243\1\part4\.Obj\
   --   -LC:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/13.1.0/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
