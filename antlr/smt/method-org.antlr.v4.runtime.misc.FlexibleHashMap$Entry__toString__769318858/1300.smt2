(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1263 0)
(declare-sort var2406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/-881951318 (var1263) var2406)
(declare-fun toString/-522406933 (var2406) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-881951318 (var1263) var2406)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1263 var1263)
(declare-const var3187 var1263) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap$Entry 
(assert (not (= var3187 null-var1263)))
(define-const var3575 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3575)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3575!1 String)
(assert (= var3575!1 ""))
(define-const var575 var2406 (key/-881951318 var3187)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap$Entry: java.lang.Object key> 
(assert true)
(define-const var160 String (toString/-522406933 var575)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2427 String (append/672562846 var3575!1 var160)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3575!2 String)
(assert (= var3575!2 (str.++ var3575!1 var160)))
(assert true)
(define-const var2899 String (append/672562846 var2427 ":")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2427!1 String)
(assert (= var2427!1 (str.++ var2427 ":")))
(define-const var3494 var2406 (value/-881951318 var3187)) ; Statement: $r5 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap$Entry: java.lang.Object value> 
(assert true)
(define-const var3087 String (toString/-522406933 var3494)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var98 String (append/672562846 var2899 var3087)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2899!1 String)
(assert (= var2899!1 (str.++ var2899 var3087)))
(assert true)
(define-const var1345 String (toString/-2075883882 var98)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/-881951318=([org.antlr.v4.runtime.misc.FlexibleHashMap$Entry], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-881951318=([org.antlr.v4.runtime.misc.FlexibleHashMap$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1263=org.antlr.v4.runtime.misc.FlexibleHashMap$Entry, var3187=r1, var3575=$r0, var2406=java.lang.Object, var575=$r2, var160=$r3, var2427=$r4, var2899=$r7, var3494=$r5, var3087=$r6, var98=$r8, var1345=$r9}
; {org.antlr.v4.runtime.misc.FlexibleHashMap$Entry=var1263, r1=var3187, $r0=var3575, java.lang.Object=var2406, $r2=var575, $r3=var160, $r4=var2427, $r7=var2899, $r5=var3494, $r6=var3087, $r8=var98, $r9=var1345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap$Entry: java.lang.Object key>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap$Entry: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1