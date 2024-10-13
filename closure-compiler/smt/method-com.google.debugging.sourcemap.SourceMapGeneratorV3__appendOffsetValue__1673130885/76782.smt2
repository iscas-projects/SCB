(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var686_append/1177541664 (var686 String) var686)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var303_appendFirstField/-1361673207 (var686 String String) void)
(declare-fun var303_appendField/1424361641 (var686 String String) void)
(declare-const null-var686 var686)
(declare-const null-Int Int)
(declare-const var3205 var686) ; Statement: r0 := @parameter0: java.lang.Appendable 
(assert (not (= var3205 null-var686)))
(declare-const var2668 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2668 null-Int)))
(declare-const var730 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var730 null-Int)))
;(assert (var686_append/1177541664 var3205 (cast-from-String-to-String "{\n"))) ; Statement: interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("{\n") 

(declare-const var3205!1 var686)
(declare-const var3105 String)
(define-const var1139 String (String_valueOf/1240665136 var2668)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
;(assert (var303_appendFirstField/-1361673207 var3205!1 "line" (cast-from-String-to-String var1139))) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFirstField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r0, "line", $r1) 

(declare-const var3205!2 var686)
(declare-const var3525 String)
(declare-const var1139!1 String)
(define-const var3956 String (String_valueOf/1240665136 var730)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1) 
;(assert (var303_appendField/1424361641 var3205!2 "column" (cast-from-String-to-String var3956))) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r0, "column", $r2) 

(declare-const var3205!3 var686)
(declare-const var3676 String)
(declare-const var3956!1 String)
;(assert (var686_append/1177541664 var3205!3 (cast-from-String-to-String "\n}"))) ; Statement: interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("\n}") 

(declare-const var3205!4 var686)
(declare-const var613 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var686_append/1177541664=([java.lang.Appendable, java.lang.CharSequence], java.lang.Appendable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/1240665136=([int], java.lang.String), var303_appendFirstField/-1361673207=([java.lang.Appendable, java.lang.String, java.lang.CharSequence], void), var303_appendField/1424361641=([java.lang.Appendable, java.lang.String, java.lang.CharSequence], void)}
; {var686=java.lang.Appendable, var3205=r0, var2668=i0, var730=i1, var3105="{\n", var1139=$r1, var303=com.google.debugging.sourcemap.SourceMapGeneratorV3, var3525="line", var3956=$r2, var3676="column", var613="\n}"}
; {java.lang.Appendable=var686, r0=var3205, i0=var2668, i1=var730, "{\n"=var3105, $r1=var1139, com.google.debugging.sourcemap.SourceMapGeneratorV3=var303, "line"=var3525, $r2=var3956, "column"=var3676, "\n}"=var613}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.Appendable;	i0 := @parameter1: int;	i1 := @parameter2: int;	interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("{\n");	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFirstField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r0, "line", $r1);	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1);	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r0, "column", $r2);	interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("\n}");	return
;block_num 1