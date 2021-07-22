library verilog;
use verilog.vl_types.all;
entity sync_counter_8bit is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        load            : in     vl_logic;
        start_stop      : in     vl_logic;
        count           : out    vl_logic_vector(7 downto 0);
        data            : in     vl_logic_vector(7 downto 0)
    );
end sync_counter_8bit;
