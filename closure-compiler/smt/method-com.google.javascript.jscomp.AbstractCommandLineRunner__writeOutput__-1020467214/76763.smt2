(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3067 0)
(declare-sort var1676 0)
(declare-sort var619 0)
(declare-sort var1467 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1676_append/1177541664 (var1676 String) var1676)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1676_append/-139169749 (var1676 Int) var1676)
(declare-const null-var3067 var3067)
(declare-const null-var1676 var1676)
(declare-const null-var619 var619)
(declare-const null-String String)
(declare-const null-var2063 var2063)
(declare-const var837 var3067) ; Statement: r10 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var837 null-var3067)))
(declare-const var1852 var1676) ; Statement: r2 := @parameter0: java.lang.Appendable 
(assert (not (= var1852 null-var1676)))
(declare-const var225 var619) ; Statement: r6 := @parameter1: com.google.javascript.jscomp.Compiler 
(assert (not (= var225 null-var619)))
(declare-const var1424 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1424 null-String)))
(declare-const var2201 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var2201 null-String)))
(declare-const var3834 String) ; Statement: r1 := @parameter4: java.lang.String 
(assert (not (= var3834 null-String)))
(declare-const var3576 var2063) ; Statement: r4 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.common.base.Function 
(assert (not (= var3576 null-var2063)))
(declare-const var3463 String) ; Statement: r11 := @parameter6: java.lang.String 
(assert (not (= var3463 null-String)))
(assert true)
(define-const var434 Int (indexOf/-1209756239 var2201 var3834)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var119 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 == $i5 goto interfaceinvoke r2.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(r3) 
(assert (= var434 var119)) ; Cond: i0 == $i5 
;(assert (var1676_append/1177541664 var1852 (cast-from-String-to-String var1424))) ; Statement: interfaceinvoke r2.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(r3) 

(declare-const var1852!1 var1676)
(declare-const var1424!1 String)
;(assert (var1676_append/-139169749 var1852!1 10)) ; Statement: interfaceinvoke r2.<java.lang.Appendable: java.lang.Appendable append(char)>(10) 

(declare-const var1852!2 var1676)
(declare-const var61 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1676_append/1177541664=([java.lang.Appendable, java.lang.CharSequence], java.lang.Appendable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1676_append/-139169749=([java.lang.Appendable, char], java.lang.Appendable)}
; {var3067=com.google.javascript.jscomp.AbstractCommandLineRunner, var837=r10, var1676=java.lang.Appendable, var1852=r2, var619=com.google.javascript.jscomp.Compiler, var225=r6, var1424=r3, var1467=null_type, var2201=r0, var3834=r1, var2063=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var3576=r4, var3463=r11, var434=i0, var119=$i5, var61=10}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var3067, r10=var837, java.lang.Appendable=var1676, r2=var1852, com.google.javascript.jscomp.Compiler=var619, r6=var225, r3=var1424, null_type=var1467, r0=var2201, r1=var3834, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var2063, r4=var3576, r11=var3463, i0=var434, $i5=var119, 10=var61}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r2 := @parameter0: java.lang.Appendable;	r6 := @parameter1: com.google.javascript.jscomp.Compiler;	r3 := @parameter2: java.lang.String;	r0 := @parameter3: java.lang.String;	r1 := @parameter4: java.lang.String;	r4 := @parameter5: com.google.javascript.jscomp.jarjar.com.google.common.base.Function;	r11 := @parameter6: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i5 = (int) -1;	if i0 == $i5 goto interfaceinvoke r2.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(r3);	interfaceinvoke r2.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(r3);	interfaceinvoke r2.<java.lang.Appendable: java.lang.Appendable append(char)>(10);	return
;block_num 3