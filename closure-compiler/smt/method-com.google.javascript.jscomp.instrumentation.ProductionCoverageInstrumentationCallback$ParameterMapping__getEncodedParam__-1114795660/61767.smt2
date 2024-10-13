(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3786 0)
(declare-sort var3906 0)
(declare-sort var1939 0)
(declare-sort var787 0)
(declare-sort var1125 0)
(declare-sort var438 0)
(declare-sort var142 0)
(declare-sort var3423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fileNameToIndex/-1827240332 (var3786) var787)
(declare-fun var787_size/-1594421051 (var787) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var787_putIfAbsent/-2124421769 (var787 var1125 var1125) var1125)
(declare-fun cast-from-String-to-var1125 (String) var1125)
(declare-fun cast-from-Int-to-var1125 (Int) var1125)
(declare-fun functionNameToIndex/-1827240332 (var3786) var787)
(declare-fun typeToIndex/-1827240332 (var3786) var787)
(declare-fun name/1633728430 (var438) String)
(declare-fun cast-from-var1939-to-var438 (var1939) var438)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3423-init () var3423)
(declare-fun <init>/582965326 (var3423 var1125) void)
(declare-fun cast-from-var142-to-var1125 (var142) var1125)
(declare-const null-var3786 var3786)
(declare-const null-String String)
(declare-const null-var1939 var1939)
(declare-const null-Int Int)
(declare-const null-var142 var142)
(declare-const var3778 var3786) ; Statement: r0 := @this: com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping 
(assert (not (= var3778 null-var3786)))
(declare-const var2536 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2536 null-String)))
(declare-const var1462 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1462 null-String)))
(declare-const var2983 var1939) ; Statement: r9 := @parameter2: com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type 
(assert (not (= var2983 null-var1939)))
(declare-const var631 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var631 null-Int)))
(declare-const var497 Int) ; Statement: i7 := @parameter4: int 
(assert (not (= var497 null-Int)))
(define-const var1735 var787 (fileNameToIndex/-1827240332 var3778)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map fileNameToIndex> 
(define-const var3126 var787 (fileNameToIndex/-1827240332 var3778)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map fileNameToIndex> 
(define-const var3042 Int (var787_size/-1594421051 var3126)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var1975 Int (Int_valueOf/-1371140006 var3042)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
;(assert (var787_putIfAbsent/-2124421769 var1735 (cast-from-String-to-var1125 var2536) (cast-from-Int-to-var1125 var1975))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>(r1, $r4) 

(declare-const var1735!1 var787)
(declare-const var2536!1 String)
(declare-const var1975!1 Int)
(define-const var2709 var787 (functionNameToIndex/-1827240332 var3778)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map functionNameToIndex> 
(define-const var3368 var787 (functionNameToIndex/-1827240332 var3778)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map functionNameToIndex> 
(define-const var3622 Int (var787_size/-1594421051 var3368)) ; Statement: $i1 = interfaceinvoke $r6.<java.util.Map: int size()>() 
(define-const var2270 Int (Int_valueOf/-1371140006 var3622)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
;(assert (var787_putIfAbsent/-2124421769 var2709 (cast-from-String-to-var1125 var1462) (cast-from-Int-to-var1125 var2270))) ; Statement: interfaceinvoke $r7.<java.util.Map: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>(r5, $r8) 

(declare-const var2709!1 var787)
(declare-const var1462!1 String)
(declare-const var2270!1 Int)
(define-const var799 var787 (typeToIndex/-1827240332 var3778)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map typeToIndex> 
(assert true)
(define-const var1812 String (name/1633728430 (cast-from-var1939-to-var438 var2983))) ; Statement: $r13 = virtualinvoke r9.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type: java.lang.String name()>() 
(define-const var3945 var787 (typeToIndex/-1827240332 var3778)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map typeToIndex> 
(define-const var840 Int (var787_size/-1594421051 var3945)) ; Statement: $i2 = interfaceinvoke $r11.<java.util.Map: int size()>() 
(define-const var2427 Int (Int_valueOf/-1371140006 var840)) ; Statement: $r12 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
;(assert (var787_putIfAbsent/-2124421769 var799 (cast-from-String-to-var1125 var1812) (cast-from-Int-to-var1125 var2427))) ; Statement: interfaceinvoke $r10.<java.util.Map: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>($r13, $r12) 

(declare-const var799!1 var787)
(declare-const var1812!1 String)
(declare-const var2427!1 Int)
(define-const var3558 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3558)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3558!1 String)
(assert (= var3558!1 ""))
(define-const var244 var787 (fileNameToIndex/-1827240332 var3778)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map fileNameToIndex> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1158 var142) ; Statement: $r35 := @caughtexception 
(assert (not (= var1158 null-var142)))
(define-const var1681 var3423 var3423-init) ; Statement: $r39 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var1681 (cast-from-var142-to-var1125 var1158))) ; Statement: specialinvoke $r39.<java.lang.AssertionError: void <init>(java.lang.Object)>($r35) 

(declare-const var1681!1 var3423)
(declare-const var1158!1 var142)
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {fileNameToIndex/-1827240332=([com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping], java.util.Map), var787_size/-1594421051=([java.util.Map], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var787_putIfAbsent/-2124421769=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1125=([java.lang.String], java.lang.Object), cast-from-Int-to-var1125=([java.lang.Integer], java.lang.Object), functionNameToIndex/-1827240332=([com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping], java.util.Map), typeToIndex/-1827240332=([com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping], java.util.Map), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1939-to-var438=([com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3423-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-var142-to-var1125=([java.io.IOException], java.lang.Object)}
; {var3786=com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping, var3778=r0, var2536=r1, var3906=null_type, var1462=r5, var1939=com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type, var2983=r9, var631=i6, var497=i7, var787=java.util.Map, var1735=$r3, var3126=$r2, var3042=$i0, var1975=$r4, var1125=java.lang.Object, var2709=$r7, var3368=$r6, var3622=$i1, var2270=$r8, var799=$r10, var438=java.lang.Enum, var1812=$r13, var3945=$r11, var840=$i2, var2427=$r12, var3558=$r38, var244=$r15, var142=java.io.IOException, var1158=$r35, var3423=java.lang.AssertionError, var1681=$r39}
; {com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping=var3786, r0=var3778, r1=var2536, null_type=var3906, r5=var1462, com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type=var1939, r9=var2983, i6=var631, i7=var497, java.util.Map=var787, $r3=var1735, $r2=var3126, $i0=var3042, $r4=var1975, java.lang.Object=var1125, $r7=var2709, $r6=var3368, $i1=var3622, $r8=var2270, $r10=var799, java.lang.Enum=var438, $r13=var1812, $r11=var3945, $i2=var840, $r12=var2427, $r38=var3558, $r15=var244, java.io.IOException=var142, $r35=var1158, java.lang.AssertionError=var3423, $r39=var1681}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r9 := @parameter2: com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type;	i6 := @parameter3: int;	i7 := @parameter4: int;	$r3 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map fileNameToIndex>;	$r2 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map fileNameToIndex>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	interfaceinvoke $r3.<java.util.Map: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>(r1, $r4);	$r7 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map functionNameToIndex>;	$r6 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map functionNameToIndex>;	$i1 = interfaceinvoke $r6.<java.util.Map: int size()>();	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	interfaceinvoke $r7.<java.util.Map: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>(r5, $r8);	$r10 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map typeToIndex>;	$r13 = virtualinvoke r9.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$Type: java.lang.String name()>();	$r11 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map typeToIndex>;	$i2 = interfaceinvoke $r11.<java.util.Map: int size()>();	$r12 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	interfaceinvoke $r10.<java.util.Map: java.lang.Object putIfAbsent(java.lang.Object,java.lang.Object)>($r13, $r12);	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<com.google.javascript.jscomp.instrumentation.ProductionCoverageInstrumentationCallback$ParameterMapping: java.util.Map fileNameToIndex>;	$r35 := @caughtexception;	$r39 = new java.lang.AssertionError;	specialinvoke $r39.<java.lang.AssertionError: void <init>(java.lang.Object)>($r35);	throw $r39
;block_num 2