(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var662 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lowerBound/-424870646 (var662) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3468_typeToString/-1316259189 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var662 var662)
(declare-const null-ClassObject ClassObject)
(declare-const var2907 var662) ; Statement: r0 := @this: com.google.gson.internal.$Gson$Types$WildcardTypeImpl 
(assert (not (= var2907 null-var662)))
(define-const var1835 ClassObject (lowerBound/-424870646 var2907)) ; Statement: $r1 = r0.<com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type upperBound> 
(assert (not (= var1835 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var2124 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2124)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2124!1 String)
(assert (= var2124!1 ""))
(assert true)
(define-const var112 String (append/672562846 var2124!1 "? super ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("? super ") 
(declare-const var2124!2 String)
(assert (= var2124!2 (str.++ var2124!1 "? super ")))
(define-const var907 ClassObject (lowerBound/-424870646 var2907)) ; Statement: $r10 = r0.<com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound> 
(define-const var737 String (var3468_typeToString/-1316259189 var907)) ; Statement: $r11 = staticinvoke <com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r10) 
(assert true)
(define-const var363 String (append/672562846 var112 var737)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var112!1 String)
(assert (= var112!1 (str.++ var112 var737)))
(assert true)
(define-const var1013 String (toString/-2075883882 var363)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lowerBound/-424870646=([com.google.gson.internal.$Gson$Types$WildcardTypeImpl], java.lang.reflect.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3468_typeToString/-1316259189=([java.lang.reflect.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var662=com.google.gson.internal.$Gson$Types$WildcardTypeImpl, var2907=r0, var1835=$r1, var2124=$r9, var112=$r12, var907=$r10, var3468=com.google.gson.internal.$Gson$Types, var737=$r11, var363=$r13, var1013=$r14}
; {com.google.gson.internal.$Gson$Types$WildcardTypeImpl=var662, r0=var2907, $r1=var1835, $r9=var2124, $r12=var112, $r10=var907, com.google.gson.internal.$Gson$Types=var3468, $r11=var737, $r13=var363, $r14=var1013}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.$Gson$Types$WildcardTypeImpl;	$r1 = r0.<com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound>;	if $r1 == null goto $r2 = r0.<com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type upperBound>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("? super ");	$r10 = r0.<com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound>;	$r11 = staticinvoke <com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 2