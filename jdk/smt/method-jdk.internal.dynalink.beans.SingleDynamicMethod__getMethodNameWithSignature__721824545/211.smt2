(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2915 0)
(declare-sort var2702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1143286467 (var2915) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2915 var2915)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var533 var2915) ; Statement: r0 := @parameter0: java.lang.invoke.MethodType 
(assert (not (= var533 null-var2915)))
(declare-const var165 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var165 null-String)))
(declare-const var3795 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3795 null-Bool)))
(assert true)
(define-const var1162 String (toString/-1143286467 var533)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.MethodType: java.lang.String toString()>() 
(assert true)
(define-const var3979 Int (lastIndexOf/-1292097097 var1162 41)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(41) 
(define-const var1712 Int (+ var3979 1)) ; Statement: i1 = $i0 + 1 
(assert true)
(define-const var603 Int (indexOf/-1037706067 var1162 44)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(44) 
(define-const var3734 Int (+ var603 1)) ; Statement: i4 = $i2 + 1 
 ; Statement: if i4 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3734 0))) ; Cond: i4 != 0 
(define-const var437 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var437)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var437!1 String)
(assert (= var437!1 ""))
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(assert (= (ite var3795 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3648 String (append/672562846 var437!1 var165)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var437!2 String)
(assert (= var437!2 (str.++ var437!1 var165)))
(assert true)
(define-const var3587 String (append/-1166366385 var3648 40)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3648!1 String)
(assert (str.prefixof var3648 var3648!1))
(assert true)
(define-const var3911 String (append/50905802 var3587 (cast-from-String-to-String var1162) var3734 var1712)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i4, i1) 
(declare-const var3587!1 String)
(assert (str.prefixof var3587 var3587!1))
(assert true)
(define-const var1787 String (toString/-2075883882 var3911)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1143286467=([java.lang.invoke.MethodType], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), indexOf/-1037706067=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2915=java.lang.invoke.MethodType, var533=r0, var165=r3, var2702=null_type, var3795=z0, var1162=r1, var3979=$i0, var1712=i1, var603=$i2, var3734=i4, var437=$r2, var3648=$r4, var3587=$r5, var3911=$r6, var1787=$r7}
; {java.lang.invoke.MethodType=var2915, r0=var533, r3=var165, null_type=var2702, z0=var3795, r1=var1162, $i0=var3979, i1=var1712, $i2=var603, i4=var3734, $r2=var437, $r4=var3648, $r5=var3587, $r6=var3911, $r7=var1787}
;seq <java.lang.invoke.MethodType: java.lang.String toString()>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.MethodType;	r3 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r1 = virtualinvoke r0.<java.lang.invoke.MethodType: java.lang.String toString()>();	$i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(41);	i1 = $i0 + 1;	$i2 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(44);	i4 = $i2 + 1;	if i4 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i4, i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3