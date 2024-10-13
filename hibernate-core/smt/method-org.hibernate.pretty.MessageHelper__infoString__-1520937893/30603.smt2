(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2147 0)
(declare-sort var2168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2168) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2168 var2168)
(declare-const var614 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var614 null-String)))
(declare-const var1672 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1672 null-String)))
(declare-const var2163 var2168) ; Statement: r8 := @parameter2: java.lang.Object 
(assert (not (= var2163 null-var2168)))
(define-const var2793 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2793)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2793!1 String)
(assert (= var2793!1 ""))
(assert true)
(define-const var3986 String (append/-1166366385 var2793!1 91)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2793!2 String)
(assert (str.prefixof var2793!1 var2793!2))
(assert true)
(define-const var1647 String (append/672562846 var3986 var614)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3986!1 String)
(assert (= var3986!1 (str.++ var3986 var614)))
(assert true)
(define-const var3181 String (append/-1166366385 var1647 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1647!1 String)
(assert (str.prefixof var1647 var1647!1))
(assert true)
(define-const var2429 String (append/672562846 var3181 var1672)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3181!1 String)
(assert (= var3181!1 (str.++ var3181 var1672)))
(assert true)
(define-const var1874 String (append/-1166366385 var2429 35)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var2429!1 String)
(assert (str.prefixof var2429 var2429!1))
 ; Statement: if r8 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(assert (not (= var2163 null-var2168))) ; Cond: r8 != null 
(assert true)
;(assert (append/-1031950772 var1874 var2163)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8) 
(declare-const var1874!1 String)
(assert (str.prefixof var1874 var1874!1))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1874!1 93)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1874!2 String)
(assert (str.prefixof var1874!1 var1874!2))
(assert true)
(define-const var1506 String (toString/-2075883882 var1874!2)) ; Statement: $r9 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var614=r1, var2147=null_type, var1672=r4, var2168=java.lang.Object, var2163=r8, var2793=$r0, var3986=$r2, var1647=$r3, var3181=$r5, var2429=$r6, var1874=r7, var1506=$r9}
; {r1=var614, null_type=var2147, r4=var1672, java.lang.Object=var2168, r8=var2163, $r0=var2793, $r2=var3986, $r3=var1647, $r5=var3181, $r6=var2429, r7=var1874, $r9=var1506}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r8 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r8);	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3