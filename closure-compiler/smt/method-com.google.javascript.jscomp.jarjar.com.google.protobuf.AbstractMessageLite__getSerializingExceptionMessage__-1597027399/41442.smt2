(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort var1965 0)
(declare-sort var0 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var0) ClassObject)
(declare-fun cast-from-var2178-to-var0 (var2178) var0)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2178 var2178)
(declare-const null-String String)
(declare-const var2820 var2178) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite 
(assert (not (= var2820 null-var2178)))
(declare-const var2828 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2828 null-String)))
(define-const var2721 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2721)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2721!1 String)
(assert (= var2721!1 ""))
(assert true)
(define-const var3937 String (append/672562846 var2721!1 "Serializing ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Serializing ") 
(declare-const var2721!2 String)
(assert (= var2721!2 (str.++ var2721!1 "Serializing ")))
(assert true)
(define-const var3268 ClassObject (getClass/1258963082 (cast-from-var2178-to-var0 var2820))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1251 String (getName/-1958580599 var3268)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2788 String (append/672562846 var3937 var1251)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3937!1 String)
(assert (= var3937!1 (str.++ var3937 var1251)))
(assert true)
(define-const var3909 String (append/672562846 var2788 " to a ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to a ") 
(declare-const var2788!1 String)
(assert (= var2788!1 (str.++ var2788 " to a ")))
(assert true)
(define-const var2931 String (append/672562846 var3909 var2828)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3909!1 String)
(assert (= var3909!1 (str.++ var3909 var2828)))
(assert true)
(define-const var988 String (append/672562846 var2931 " threw an IOException (should never happen).")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" threw an IOException (should never happen).") 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 " threw an IOException (should never happen).")))
(assert true)
(define-const var3675 String (toString/-2075883882 var988)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2178-to-var0=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2178=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var2820=r1, var2828=r6, var1965=null_type, var2721=$r0, var3937=$r4, var0=java.lang.Object, var3268=$r2, var1251=$r3, var2788=$r5, var3909=$r7, var2931=$r8, var988=$r9, var3675=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var2178, r1=var2820, r6=var2828, null_type=var1965, $r0=var2721, $r4=var3937, java.lang.Object=var0, $r2=var3268, $r3=var1251, $r5=var2788, $r7=var3909, $r8=var2931, $r9=var988, $r10=var3675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite;	r6 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Serializing ");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to a ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" threw an IOException (should never happen).");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1