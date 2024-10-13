(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var2432 0)
(declare-sort var2779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2019_of/1658831741 (Int) var2019)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var2432-init () (Array Int var2432))
(declare-fun var2779_notNull/515149844 (var2432 String (Array Int var2432)) var2432)
(declare-fun cast-from-var2019-to-var2432 (var2019) var2432)
(declare-fun getLastDay/-2097304119 (var2019 Bool) Int)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2467 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2467 null-Int)))
(declare-const var1735 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1735 null-Bool)))
(define-const var154 var2019 (var2019_of/1658831741 var2467)) ; Statement: r0 = staticinvoke <cn.hutool.core.date.Month: cn.hutool.core.date.Month of(int)>(i0) 
(define-const var1984 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1984)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1984!1 String)
(assert (= var1984!1 ""))
(assert true)
(define-const var2927 String (append/672562846 var1984!1 "Invalid Month base 0: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Month base 0: ") 
(declare-const var1984!2 String)
(assert (= var1984!2 (str.++ var1984!1 "Invalid Month base 0: ")))
(assert true)
(define-const var1068 String (append/-1001720160 var2927 var2467)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2927!1 String)
(assert (str.prefixof var2927 var2927!1))
(assert true)
(define-const var1909 String (toString/-2075883882 var1068)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var956 (Array Int var2432) arr-var2432-init) ; Statement: $r4 = newarray (java.lang.Object)[0] 
;(assert (var2779_notNull/515149844 (cast-from-var2019-to-var2432 var154) var1909 var956)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, $r5, $r4) 

(declare-const var154!1 var2019)
(declare-const var1909!1 String)
(declare-const var956!1 (Array Int var2432))
(assert true)
(define-const var540 Int (getLastDay/-2097304119 var154!1 var1735)) ; Statement: $i1 = virtualinvoke r0.<cn.hutool.core.date.Month: int getLastDay(boolean)>(z0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2019_of/1658831741=([int], cn.hutool.core.date.Month), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var2432-init=([], java.lang.Object[]), var2779_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var2019-to-var2432=([cn.hutool.core.date.Month], java.lang.Object), getLastDay/-2097304119=([cn.hutool.core.date.Month, boolean], int)}
; {var2467=i0, var1735=z0, var2019=cn.hutool.core.date.Month, var154=r0, var1984=$r1, var2927=$r2, var1068=$r3, var1909=$r5, var2432=java.lang.Object, var956=$r4, var2779=cn.hutool.core.lang.Assert, var540=$i1}
; {i0=var2467, z0=var1735, cn.hutool.core.date.Month=var2019, r0=var154, $r1=var1984, $r2=var2927, $r3=var1068, $r5=var1909, java.lang.Object=var2432, $r4=var956, cn.hutool.core.lang.Assert=var2779, $i1=var540}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	z0 := @parameter1: boolean;	r0 = staticinvoke <cn.hutool.core.date.Month: cn.hutool.core.date.Month of(int)>(i0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Month base 0: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, $r5, $r4);	$i1 = virtualinvoke r0.<cn.hutool.core.date.Month: int getLastDay(boolean)>(z0);	return $i1
;block_num 1