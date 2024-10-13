(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3649 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3649 null-String)))
(declare-const var3598 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3598 null-String)))
(assert true)
(define-const var1913 Bool (endsWith/985337093 var3649 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert (not (not (= (ite var1913 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2936 Bool (startsWith/-1785782452 var3598 "/")) ; Statement: $z4 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z4 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert (not (not (= (ite var2936 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var996 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var996)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var996!1 String)
(assert (= var996!1 ""))
(assert true)
(define-const var1423 String (append/672562846 var996!1 var3649)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var996!2 String)
(assert (= var996!2 (str.++ var996!1 var3649)))
(assert true)
(define-const var1731 String (append/-1166366385 var1423 47)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var1423!1 String)
(assert (str.prefixof var1423 var1423!1))
(assert true)
(define-const var3386 String (append/672562846 var1731 var3598)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 var3598)))
(assert true)
(define-const var1669 String (toString/-2075883882 var3386)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3649=r0, var1857=null_type, var3598=r1, var1913=$z0, var2936=$z4, var996=$r6, var1423=$r7, var1731=$r8, var3386=$r9, var1669=$r10}
; {r0=var3649, null_type=var1857, r1=var3598, $z0=var1913, $z4=var2936, $r6=var996, $r7=var1423, $r8=var1731, $r9=var3386, $r10=var1669}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z4 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z4 != 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3