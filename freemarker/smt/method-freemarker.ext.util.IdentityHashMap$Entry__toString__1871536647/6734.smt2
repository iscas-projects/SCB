(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var3644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/-1425926745 (var1979) var3644)
(declare-fun append/-1031950772 (String var3644) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1425926745 (var1979) var3644)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1979 var1979)
(declare-const var37 var1979) ; Statement: r1 := @this: freemarker.ext.util.IdentityHashMap$Entry 
(assert (not (= var37 null-var1979)))
(define-const var3650 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3650)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3650!1 String)
(assert (= var3650!1 ""))
(define-const var3454 var3644 (key/-1425926745 var37)) ; Statement: $r2 = r1.<freemarker.ext.util.IdentityHashMap$Entry: java.lang.Object key> 
(assert true)
(define-const var3860 String (append/-1031950772 var3650!1 var3454)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3650!2 String)
(assert (str.prefixof var3650!1 var3650!2))
(assert true)
(define-const var1170 String (append/672562846 var3860 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 "=")))
(define-const var1838 var3644 (value/-1425926745 var37)) ; Statement: $r4 = r1.<freemarker.ext.util.IdentityHashMap$Entry: java.lang.Object value> 
(assert true)
(define-const var2857 String (append/-1031950772 var1170 var1838)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1170!1 String)
(assert (str.prefixof var1170 var1170!1))
(assert true)
(define-const var1112 String (toString/-2075883882 var2857)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/-1425926745=([freemarker.ext.util.IdentityHashMap$Entry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1425926745=([freemarker.ext.util.IdentityHashMap$Entry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1979=freemarker.ext.util.IdentityHashMap$Entry, var37=r1, var3650=$r0, var3644=java.lang.Object, var3454=$r2, var3860=$r3, var1170=$r5, var1838=$r4, var2857=$r6, var1112=$r7}
; {freemarker.ext.util.IdentityHashMap$Entry=var1979, r1=var37, $r0=var3650, java.lang.Object=var3644, $r2=var3454, $r3=var3860, $r5=var1170, $r4=var1838, $r6=var2857, $r7=var1112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.util.IdentityHashMap$Entry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.ext.util.IdentityHashMap$Entry: java.lang.Object key>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r4 = r1.<freemarker.ext.util.IdentityHashMap$Entry: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1