(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1687 0)
(declare-sort var3031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getInit/-1834952528 (var3031) Int)
(declare-fun cast-from-Int-to-String (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getUsed/364132067 (var3031) Int)
(declare-fun getCommitted/1073703902 (var3031) Int)
(declare-fun getMax/1152071350 (var3031) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3031 var3031)
(declare-const var2211 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2211 null-String)))
(declare-const var2367 var3031) ; Statement: r0 := @parameter1: java.lang.management.MemoryUsage 
(assert (not (= var2367 null-var3031)))
 ; Statement: if r0 == null goto return "" 
(assert (not (= var2367 null-var3031))) ; Negate: Cond: r0 == null  
(define-const var2112 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2112)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2112!1 String)
(assert (= var2112!1 ""))
(assert true)
(define-const var3563 Int (getInit/-1834952528 var2367)) ; Statement: $l0 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getInit()>() 
(define-const var827 String (str.++ "  \u0001 init: \u0001\r\n" var2211 (cast-from-Int-to-String var3563))) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 init: \u0001\r\n") 
(assert true)
;(assert (append/672562846 var2112!1 var827)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2112!2 String)
(assert (= var2112!2 (str.++ var2112!1 var827)))
(assert true)
(define-const var2985 Int (getUsed/364132067 var2367)) ; Statement: $l1 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getUsed()>() 
(define-const var2252 String (str.++ "  \u0001 used: \u0001\r\n" var2211 (cast-from-Int-to-String var2985))) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 used: \u0001\r\n") 
(assert true)
;(assert (append/672562846 var2112!2 var2252)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2112!3 String)
(assert (= var2112!3 (str.++ var2112!2 var2252)))
(assert true)
(define-const var547 Int (getCommitted/1073703902 var2367)) ; Statement: $l2 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getCommitted()>() 
(define-const var2511 String (str.++ "  \u0001 committed: \u0001\r\n" var2211 (cast-from-Int-to-String var547))) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 committed: \u0001\r\n") 
(assert true)
;(assert (append/672562846 var2112!3 var2511)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2112!4 String)
(assert (= var2112!4 (str.++ var2112!3 var2511)))
(assert true)
(define-const var2416 Int (getMax/1152071350 var2367)) ; Statement: $l3 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getMax()>() 
(define-const var198 String (str.++ "  \u0001 max: \u0001\r\n" var2211 (cast-from-Int-to-String var2416))) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 max: \u0001\r\n") 
(assert true)
;(assert (append/672562846 var2112!4 var198)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2112!5 String)
(assert (= var2112!5 (str.++ var2112!4 var198)))
(assert true)
(define-const var2291 String (toString/-2075883882 var2112!5)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getInit/-1834952528=([java.lang.management.MemoryUsage], long), cast-from-Int-to-String=([long], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getUsed/364132067=([java.lang.management.MemoryUsage], long), getCommitted/1073703902=([java.lang.management.MemoryUsage], long), getMax/1152071350=([java.lang.management.MemoryUsage], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2211=r2, var1687=null_type, var3031=java.lang.management.MemoryUsage, var2367=r0, var2112=$r1, var3563=$l0, var827=$r3, var2985=$l1, var2252=$r4, var547=$l2, var2511=$r5, var2416=$l3, var198=$r6, var2291=$r7}
; {r2=var2211, null_type=var1687, java.lang.management.MemoryUsage=var3031, r0=var2367, $r1=var2112, $l0=var3563, $r3=var827, $l1=var2985, $r4=var2252, $l2=var547, $r5=var2511, $l3=var2416, $r6=var198, $r7=var2291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.management.MemoryUsage;	if r0 == null goto return "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$l0 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getInit()>();	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 init: \u0001\r\n");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$l1 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getUsed()>();	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 used: \u0001\r\n");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$l2 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getCommitted()>();	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 committed: \u0001\r\n");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$l3 = virtualinvoke r0.<java.lang.management.MemoryUsage: long getMax()>();	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,long)>(r2, $l3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("  \u0001 max: \u0001\r\n");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2