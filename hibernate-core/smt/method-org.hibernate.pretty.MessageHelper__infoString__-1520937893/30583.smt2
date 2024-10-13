(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3952 0)
(declare-sort var1996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var1996 var1996)
(declare-const var1566 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1566 null-String)))
(declare-const var1806 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1806 null-String)))
(declare-const var973 var1996) ; Statement: r8 := @parameter2: java.lang.Object 
(assert (not (= var973 null-var1996)))
(define-const var2236 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2236)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2236!1 String)
(assert (= var2236!1 ""))
(assert true)
(define-const var3852 String (append/-1166366385 var2236!1 91)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2236!2 String)
(assert (str.prefixof var2236!1 var2236!2))
(assert true)
(define-const var136 String (append/672562846 var3852 var1566)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3852!1 String)
(assert (= var3852!1 (str.++ var3852 var1566)))
(assert true)
(define-const var3475 String (append/-1166366385 var136 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var136!1 String)
(assert (str.prefixof var136 var136!1))
(assert true)
(define-const var3327 String (append/672562846 var3475 var1806)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3475!1 String)
(assert (= var3475!1 (str.++ var3475 var1806)))
(assert true)
(define-const var814 String (append/-1166366385 var3327 35)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var3327!1 String)
(assert (str.prefixof var3327 var3327!1))
 ; Statement: if r8 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(assert (not (not (= var973 null-var1996)))) ; Negate: Cond: r8 != null  
(assert true)
;(assert (append/672562846 var814 "<null>")) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var814!1 String)
(assert (= var814!1 (str.++ var814 "<null>")))
 ; Statement: goto [?= virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var814!1 93)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var814!2 String)
(assert (str.prefixof var814!1 var814!2))
(assert true)
(define-const var77 String (toString/-2075883882 var814!2)) ; Statement: $r9 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1566=r1, var3952=null_type, var1806=r4, var1996=java.lang.Object, var973=r8, var2236=$r0, var3852=$r2, var136=$r3, var3475=$r5, var3327=$r6, var814=r7, var77=$r9}
; {r1=var1566, null_type=var3952, r4=var1806, java.lang.Object=var1996, r8=var973, $r0=var2236, $r2=var3852, $r3=var136, $r5=var3475, $r6=var3327, r7=var814, $r9=var77}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r8 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	goto [?= virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3