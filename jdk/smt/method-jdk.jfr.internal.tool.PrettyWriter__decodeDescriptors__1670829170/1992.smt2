(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3818 0)
(declare-sort var53 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3014-init () var3014)
(declare-fun <init>/-325640736 (var3014) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3818 var3818)
(declare-const null-String String)
(declare-const var3050 var3818) ; Statement: r7 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var3050 null-var3818)))
(declare-const var2993 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2993 null-String)))
(declare-const var2746 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2746 null-String)))
(define-const var1376 var3014 var3014-init) ; Statement: $r15 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1376)) ; Statement: specialinvoke $r15.<java.util.ArrayList: void <init>()>() 

(declare-const var1376!1 var3014)
(define-const var3339 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3072 Int (length/-134980193 var2993)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto return $r15 
(assert (>= var3339 var3072)) ; Cond: i5 >= $i0 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3014-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int)}
; {var3818=jdk.jfr.internal.tool.PrettyWriter, var3050=r7, var2993=r1, var53=null_type, var2746=r8, var3014=java.util.ArrayList, var1376=$r15, var3339=i5, var3072=$i0}
; {jdk.jfr.internal.tool.PrettyWriter=var3818, r7=var3050, r1=var2993, null_type=var53, r8=var2746, java.util.ArrayList=var3014, $r15=var1376, i5=var3339, $i0=var3072}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r7 := @this: jdk.jfr.internal.tool.PrettyWriter;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r15 = new java.util.ArrayList;	specialinvoke $r15.<java.util.ArrayList: void <init>()>();	i5 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i5 >= $i0 goto return $r15;	return $r15
;block_num 3