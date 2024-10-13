(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var162 0)
(declare-sort var1062 0)
(declare-sort var1390 0)
(declare-sort var2656 0)
(declare-sort var3389 0)
(declare-sort var1455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1390_builder/-1118308412 (Int) var1062)
(declare-fun var2656_allocate/-1645520829 (Int) var2656)
(declare-fun put/-1570208867 (var2656 String) var2656)
(declare-fun flip/1038502598 (var3389) var3389)
(declare-fun cast-from-var2656-to-var3389 (var2656) var3389)
(declare-fun append/-765150069 (var1062 var2656) void)
(declare-fun build/1560348016 (var1062) var1390)
(declare-fun var1455_fromBuffer/-1829209545 (var1390 String) var1455)
(declare-const null-String String)
(declare-const var1424 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1424 null-String)))
(declare-const var3425 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3425 null-String)))
(assert true)
(define-const var1945 Int (length/-134980193 var1424)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3567 var1062 (var1390_builder/-1118308412 var1945)) ; Statement: r1 = staticinvoke <com.github.jknack.handlebars.internal.antlr.CodePointBuffer: com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder builder(int)>($i0) 
(assert true)
(define-const var823 Int (length/-134980193 var1424)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var179 var2656 (var2656_allocate/-1645520829 var823)) ; Statement: r2 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer allocate(int)>($i1) 
(assert true)
;(assert (put/-1570208867 var179 var1424)) ; Statement: virtualinvoke r2.<java.nio.CharBuffer: java.nio.CharBuffer put(java.lang.String)>(r0) 

(declare-const var179!1 var2656)
(declare-const var1424!1 String)
(assert true)
;(assert (flip/1038502598 (cast-from-var2656-to-var3389 var179!1))) ; Statement: virtualinvoke r2.<java.nio.CharBuffer: java.nio.Buffer flip()>() 

(declare-const var179!2 var2656)
(assert true)
;(assert (append/-765150069 var3567 var179!2)) ; Statement: virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder: void append(java.nio.CharBuffer)>(r2) 

(declare-const var3567!1 var1062)
(declare-const var179!3 var2656)
(assert true)
(define-const var3803 var1390 (build/1560348016 var3567!1)) ; Statement: $r4 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder: com.github.jknack.handlebars.internal.antlr.CodePointBuffer build()>() 
(define-const var1303 var1455 (var1455_fromBuffer/-1829209545 var3803 var3425)) ; Statement: $r5 = staticinvoke <com.github.jknack.handlebars.internal.antlr.CodePointCharStream: com.github.jknack.handlebars.internal.antlr.CodePointCharStream fromBuffer(com.github.jknack.handlebars.internal.antlr.CodePointBuffer,java.lang.String)>($r4, r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1390_builder/-1118308412=([int], com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder), var2656_allocate/-1645520829=([int], java.nio.CharBuffer), put/-1570208867=([java.nio.CharBuffer, java.lang.String], java.nio.CharBuffer), flip/1038502598=([java.nio.Buffer], java.nio.Buffer), cast-from-var2656-to-var3389=([java.nio.CharBuffer], java.nio.Buffer), append/-765150069=([com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder, java.nio.CharBuffer], void), build/1560348016=([com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder], com.github.jknack.handlebars.internal.antlr.CodePointBuffer), var1455_fromBuffer/-1829209545=([com.github.jknack.handlebars.internal.antlr.CodePointBuffer, java.lang.String], com.github.jknack.handlebars.internal.antlr.CodePointCharStream)}
; {var1424=r0, var162=null_type, var3425=r3, var1945=$i0, var1062=com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder, var1390=com.github.jknack.handlebars.internal.antlr.CodePointBuffer, var3567=r1, var823=$i1, var2656=java.nio.CharBuffer, var179=r2, var3389=java.nio.Buffer, var3803=$r4, var1455=com.github.jknack.handlebars.internal.antlr.CodePointCharStream, var1303=$r5}
; {r0=var1424, null_type=var162, r3=var3425, $i0=var1945, com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder=var1062, com.github.jknack.handlebars.internal.antlr.CodePointBuffer=var1390, r1=var3567, $i1=var823, java.nio.CharBuffer=var2656, r2=var179, java.nio.Buffer=var3389, $r4=var3803, com.github.jknack.handlebars.internal.antlr.CodePointCharStream=var1455, $r5=var1303}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = staticinvoke <com.github.jknack.handlebars.internal.antlr.CodePointBuffer: com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder builder(int)>($i0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = staticinvoke <java.nio.CharBuffer: java.nio.CharBuffer allocate(int)>($i1);	virtualinvoke r2.<java.nio.CharBuffer: java.nio.CharBuffer put(java.lang.String)>(r0);	virtualinvoke r2.<java.nio.CharBuffer: java.nio.Buffer flip()>();	virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder: void append(java.nio.CharBuffer)>(r2);	$r4 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.CodePointBuffer$Builder: com.github.jknack.handlebars.internal.antlr.CodePointBuffer build()>();	$r5 = staticinvoke <com.github.jknack.handlebars.internal.antlr.CodePointCharStream: com.github.jknack.handlebars.internal.antlr.CodePointCharStream fromBuffer(com.github.jknack.handlebars.internal.antlr.CodePointBuffer,java.lang.String)>($r4, r3);	return $r5
;block_num 1