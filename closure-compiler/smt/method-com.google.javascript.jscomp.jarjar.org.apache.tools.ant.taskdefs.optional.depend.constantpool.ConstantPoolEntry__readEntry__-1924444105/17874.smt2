(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1157 0)
(declare-sort var2668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readUnsignedByte/-597820149 (var1157) Int)
(declare-fun var2668-init () var2668)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1431237581 (var2668 String) void)
(declare-const null-var1157 var1157)
(declare-const var2622 var1157) ; Statement: r0 := @parameter0: java.io.DataInputStream 
(assert (not (= var2622 null-var1157)))
(assert true)
(define-const var3843 Int (readUnsignedByte/-597820149 var2622)) ; Statement: i0 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedByte()>() 
 ; Statement: tableswitch(i0) {     case 1: goto $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.Utf8CPInfo;     case 2: goto $r17 = new java.lang.ClassFormatError;     case 3: goto $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo;     case 4: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FloatCPInfo;     case 5: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.LongCPInfo;     case 6: goto $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.DoubleCPInfo;     case 7: goto $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ClassCPInfo;     case 8: goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.StringCPInfo;     case 9: goto $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo;     case 10: goto $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo;     case 11: goto $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo;     case 12: goto $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo;     case 13: goto $r17 = new java.lang.ClassFormatError;     case 14: goto $r17 = new java.lang.ClassFormatError;     case 15: goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo;     case 16: goto $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo;     case 17: goto $r17 = new java.lang.ClassFormatError;     case 18: goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo;     case 19: goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ModuleCPInfo;     case 20: goto $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.PackageCPInfo;     default: goto $r17 = new java.lang.ClassFormatError; } 
(assert (and (not (= var3843 1)) true)) ; Intersect: Negate: Cond: i0 == 1   and Non Conditional 
(define-const var1220 var2668 var2668-init) ; Statement: $r17 = new java.lang.ClassFormatError 
(define-const var1610 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1610)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1610!1 String)
(assert (= var1610!1 ""))
(assert true)
(define-const var1439 String (append/672562846 var1610!1 "Invalid Constant Pool entry Type ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Constant Pool entry Type ") 
(declare-const var1610!2 String)
(assert (= var1610!2 (str.++ var1610!1 "Invalid Constant Pool entry Type ")))
(assert true)
(define-const var2006 String (append/-1001720160 var1439 var3843)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1439!1 String)
(assert (str.prefixof var1439 var1439!1))
(assert true)
(define-const var1268 String (toString/-2075883882 var2006)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1431237581 var1220 var1268)) ; Statement: specialinvoke $r17.<java.lang.ClassFormatError: void <init>(java.lang.String)>($r21) 

(declare-const var1220!1 var2668)
(declare-const var1268!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {readUnsignedByte/-597820149=([java.io.DataInputStream], int), var2668-init=([], java.lang.ClassFormatError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1431237581=([java.lang.ClassFormatError, java.lang.String], void)}
; {var1157=java.io.DataInputStream, var2622=r0, var3843=i0, var2668=java.lang.ClassFormatError, var1220=$r17, var1610=$r18, var1439=$r19, var2006=$r20, var1268=$r21}
; {java.io.DataInputStream=var1157, r0=var2622, i0=var3843, java.lang.ClassFormatError=var2668, $r17=var1220, $r18=var1610, $r19=var1439, $r20=var2006, $r21=var1268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.DataInputStream;	i0 = virtualinvoke r0.<java.io.DataInputStream: int readUnsignedByte()>();	tableswitch(i0) {     case 1: goto $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.Utf8CPInfo;     case 2: goto $r17 = new java.lang.ClassFormatError;     case 3: goto $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.IntegerCPInfo;     case 4: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FloatCPInfo;     case 5: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.LongCPInfo;     case 6: goto $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.DoubleCPInfo;     case 7: goto $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ClassCPInfo;     case 8: goto $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.StringCPInfo;     case 9: goto $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.FieldRefCPInfo;     case 10: goto $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo;     case 11: goto $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo;     case 12: goto $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo;     case 13: goto $r17 = new java.lang.ClassFormatError;     case 14: goto $r17 = new java.lang.ClassFormatError;     case 15: goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo;     case 16: goto $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo;     case 17: goto $r17 = new java.lang.ClassFormatError;     case 18: goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo;     case 19: goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ModuleCPInfo;     case 20: goto $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.PackageCPInfo;     default: goto $r17 = new java.lang.ClassFormatError; };	$r17 = new java.lang.ClassFormatError;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Constant Pool entry Type ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.ClassFormatError: void <init>(java.lang.String)>($r21);	throw $r17
;block_num 2