library verilog;
use verilog.vl_types.all;
entity counter_4bit is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        load            : in     vl_logic;
        start_stop      : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0);
        data            : in     vl_logic_vector(3 downto 0)
    );
end counter_4bit;
