(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var885 0)
(declare-sort var988 0)
(declare-sort var787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$base/-1400157286 (var885) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$sub/-1400157286 (var885) ClassObject)
(declare-fun val$typeAdapter/-1400157286 (var885) var988)
(declare-fun append/-1031950772 (String var787) String)
(declare-fun cast-from-var988-to-var787 (var988) var787)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var885 var885)
(declare-const var2208 var885) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33 
(assert (not (= var2208 null-var885)))
(define-const var2182 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2182)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2182!1 String)
(assert (= var2182!1 ""))
(assert true)
(define-const var3837 String (append/672562846 var2182!1 "Factory[type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=") 
(declare-const var2182!2 String)
(assert (= var2182!2 (str.++ var2182!1 "Factory[type=")))
(define-const var657 ClassObject (val$base/-1400157286 var2208)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$base> 
(assert true)
(define-const var1962 String (getName/-1958580599 var657)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1314 String (append/672562846 var3837 var1962)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3837!1 String)
(assert (= var3837!1 (str.++ var3837 var1962)))
(assert true)
(define-const var3122 String (append/672562846 var1314 "+")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+") 
(declare-const var1314!1 String)
(assert (= var1314!1 (str.++ var1314 "+")))
(define-const var3177 ClassObject (val$sub/-1400157286 var2208)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$sub> 
(assert true)
(define-const var635 String (getName/-1958580599 var3177)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2983 String (append/672562846 var3122 var635)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3122!1 String)
(assert (= var3122!1 (str.++ var3122 var635)))
(assert true)
(define-const var2766 String (append/672562846 var2983 ",adapter=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var2983!1 String)
(assert (= var2983!1 (str.++ var2983 ",adapter=")))
(define-const var552 var988 (val$typeAdapter/-1400157286 var2208)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var322 String (append/-1031950772 var2766 (cast-from-var988-to-var787 var552))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2766!1 String)
(assert (str.prefixof var2766 var2766!1))
(assert true)
(define-const var3067 String (append/672562846 var322 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var322!1 String)
(assert (= var322!1 (str.++ var322 "]")))
(assert true)
(define-const var1723 String (toString/-2075883882 var3067)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$base/-1400157286=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$sub/-1400157286=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33], java.lang.Class), val$typeAdapter/-1400157286=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33], com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var988-to-var787=([com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var885=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33, var2208=r1, var2182=$r0, var3837=$r4, var657=$r2, var1962=$r3, var1314=$r5, var3122=$r8, var3177=$r6, var635=$r7, var2983=$r9, var2766=$r11, var988=com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter, var552=$r10, var787=java.lang.Object, var322=$r12, var3067=$r13, var1723=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33=var885, r1=var2208, $r0=var2182, $r4=var3837, $r2=var657, $r3=var1962, $r5=var1314, $r8=var3122, $r6=var3177, $r7=var635, $r9=var2983, $r11=var2766, com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter=var988, $r10=var552, java.lang.Object=var787, $r12=var322, $r13=var3067, $r14=var1723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$base>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+");	$r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$sub>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$33: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1