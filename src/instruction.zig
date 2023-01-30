pub const Instruction = union(InstructionType) {
    ret: u8,
    aload: u8,
    astore: u8,
    dload: u8,
    dstore: u8,
    fload: u8,
    fstore: u8,
    iload: u8,
    istore: u8,
    lload: u8,
    lstore: u8,

    bipush: i8,
    sipush: i16,
    iinc: struct { var_num: u8, amount: i32 },

    // branching
    goto: []const u8,
    goto_w: []const u8,
    if_acmpeq: []const u8,
    if_acmpne: []const u8,
    if_icmpeq: []const u8,
    if_icmpge: []const u8,
    if_icmpgt: []const u8,
    if_icmple: []const u8,
    if_icmplt: []const u8,
    if_icmpne: []const u8,
    ifeq: []const u8,
    ifge: []const u8,
    ifgt: []const u8,
    ifle: []const u8,
    iflt: []const u8,
    ifne: []const u8,
    ifnonnull: []const u8,
    ifnull: []const u8,
    jsr: []const u8,
    jsr_w: []const u8,

    // classes and objects
    anewarray: []const u8,
    checkcast: []const u8,
    instanceof: []const u8,
    new: []const u8,

    // method invocation
    invokenonvirtual: []const u8,
    invokestatic: []const u8,
    invokevirtual: []const u8,
    invokeinterface: struct { method_spec: []const u8, arg_count: u16 },

    // field manipulation
    getfield: struct { field_spec: []const u8, descriptor: []const u8 },
    getstatic: struct { field_spec: []const u8, descriptor: []const u8 },
    putfield: struct { field_spec: []const u8, descriptor: []const u8 },
    putstatic: struct { field_spec: []const u8, descriptor: []const u8 },

    newarray: []const u8,
    multinewarray: struct { descriptor: []const u8, num_dimensions: u16 },

    ldc: []const u8,
    ldc_w,

    lookupswitch,
    tableswitch,

    // Instructions with no parameters
    aaload,
    aastore,
    aconst_null,
    aload_0,
    aload_1,
    aload_2,
    aload_3,
    areturn,
    arraylength,
    astore_0,
    astore_1,
    astore_2,
    astore_3,
    athrow,
    baload,
    bastore,
    breakpoint,
    caload,
    castore,
    d2f,
    d2i,
    d2l,
    dadd,
    daload,
    dastore,
    dcmpg,
    dcmpl,
    dconst_0,
    dconst_1,
    ddiv,
    dload_0,
    dload_1,
    dload_2,
    dload_3,
    dmul,
    dneg,
    drem,
    dreturn,
    dstore_0,
    dstore_1,
    dstore_2,
    dstore_3,
    dsub,
    dup,
    dup2,
    dup2_x1,
    dup2_x2,
    dup_x1,
    dup_x2,
    f2d,
    f2i,
    f2l,
    fadd,
    faload,
    fastore,
    fcmpg,
    fcmpl,
    fconst_0,
    fconst_1,
    fconst_2,
    fdiv,
    fload_0,
    fload_1,
    fload_2,
    fload_3,
    fmul,
    fneg,
    frem,
    freturn,
    fstore_0,
    fstore_1,
    fstore_2,
    fstore_3,
    fsub,
    i2d,
    i2f,
    i2l,
    iadd,
    iaload,
    iand,
    iastore,
    iconst_0,
    iconst_1,
    iconst_2,
    iconst_3,
    iconst_4,
    iconst_5,
    iconst_m1,
    idiv,
    iload_0,
    iload_1,
    iload_2,
    iload_3,
    imul,
    ineg,
    int2byte,
    int2char,
    int2short,
    ior,
    irem,
    ireturn,
    ishl,
    ishr,
    istore_0,
    istore_1,
    istore_2,
    istore_3,
    isub,
    iushr,
    ixor,
    l2d,
    l2f,
    l2i,
    ladd,
    laload,
    land,
    lastore,
    lcmp,
    lconst_0,
    lconst_1,
    ldiv,
    lload_0,
    lload_1,
    lload_2,
    lload_3,
    lmul,
    lneg,
    lor,
    lrem,
    lreturn,
    lshl,
    lshr,
    lstore_0,
    lstore_1,
    lstore_2,
    lstore_3,
    lsub,
    lushr,
    lxor,
    monitorenter,
    monitorexit,
    nop,
    pop,
    pop2,
    @"return",
    saload,
    sastore,
    swap,
};

pub const InstructionType = enum {
    // local variables
    ret,
    aload,
    astore,
    dload,
    dstore,
    fload,
    fstore,
    iload,
    istore,
    lload,
    lstore,

    bipush,
    sipush,
    iinc,

    // branching
    goto,
    goto_w,
    if_acmpeq,
    if_acmpne,
    if_icmpeq,
    if_icmpge,
    if_icmpgt,
    if_icmple,
    if_icmplt,
    if_icmpne,
    ifeq,
    ifge,
    ifgt,
    ifle,
    iflt,
    ifne,
    ifnonnull,
    ifnull,
    jsr,
    jsr_w,

    // classes and objects
    anewarray,
    checkcast,
    instanceof,
    new,

    // method invocation
    invokenonvirtual,
    invokestatic,
    invokevirtual,
    invokeinterface,

    // field manipulation
    getfield,
    getstatic,
    putfield,
    putstatic,

    newarray,
    multinewarray,

    ldc,
    ldc_w,

    lookupswitch,
    tableswitch,

    // Instructions with no parameters
    aaload,
    aastore,
    aconst_null,
    aload_0,
    aload_1,
    aload_2,
    aload_3,
    areturn,
    arraylength,
    astore_0,
    astore_1,
    astore_2,
    astore_3,
    athrow,
    baload,
    bastore,
    breakpoint,
    caload,
    castore,
    d2f,
    d2i,
    d2l,
    dadd,
    daload,
    dastore,
    dcmpg,
    dcmpl,
    dconst_0,
    dconst_1,
    ddiv,
    dload_0,
    dload_1,
    dload_2,
    dload_3,
    dmul,
    dneg,
    drem,
    dreturn,
    dstore_0,
    dstore_1,
    dstore_2,
    dstore_3,
    dsub,
    dup,
    dup2,
    dup2_x1,
    dup2_x2,
    dup_x1,
    dup_x2,
    f2d,
    f2i,
    f2l,
    fadd,
    faload,
    fastore,
    fcmpg,
    fcmpl,
    fconst_0,
    fconst_1,
    fconst_2,
    fdiv,
    fload_0,
    fload_1,
    fload_2,
    fload_3,
    fmul,
    fneg,
    frem,
    freturn,
    fstore_0,
    fstore_1,
    fstore_2,
    fstore_3,
    fsub,
    i2d,
    i2f,
    i2l,
    iadd,
    iaload,
    iand,
    iastore,
    iconst_0,
    iconst_1,
    iconst_2,
    iconst_3,
    iconst_4,
    iconst_5,
    iconst_m1,
    idiv,
    iload_0,
    iload_1,
    iload_2,
    iload_3,
    imul,
    ineg,
    int2byte,
    int2char,
    int2short,
    ior,
    irem,
    ireturn,
    ishl,
    ishr,
    istore_0,
    istore_1,
    istore_2,
    istore_3,
    isub,
    iushr,
    ixor,
    l2d,
    l2f,
    l2i,
    ladd,
    laload,
    land,
    lastore,
    lcmp,
    lconst_0,
    lconst_1,
    ldiv,
    lload_0,
    lload_1,
    lload_2,
    lload_3,
    lmul,
    lneg,
    lor,
    lrem,
    lreturn,
    lshl,
    lshr,
    lstore_0,
    lstore_1,
    lstore_2,
    lstore_3,
    lsub,
    lushr,
    lxor,
    monitorenter,
    monitorexit,
    nop,
    pop,
    pop2,
    @"return",
    saload,
    sastore,
    swap,
};
