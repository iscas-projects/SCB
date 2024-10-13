(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var333 0)
(declare-sort var2766 0)
(declare-sort var437 0)
(declare-sort var3924 0)
(declare-sort var1813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliasReferences/306632084 (var333) var437)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun var437_get/1088891777 (var437 var3924) var3924)
(declare-fun cast-from-String-to-var3924 (String) var3924)
(declare-fun cast-from-var3924-to-String (var3924) String)
(declare-fun var1813-init () var1813)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1813 String) void)
(declare-const null-var333 var333)
(declare-const null-String String)
(declare-const var1100 var333) ; Statement: r0 := @this: org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl 
(assert (not (= var1100 null-var333)))
(declare-const var1001 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1001 null-String)))
(define-const var3005 var437 (aliasReferences/306632084 var1100)) ; Statement: $r2 = r0.<org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl: java.util.Map aliasReferences> 
(assert true)
(define-const var3632 String (toLowerCase/415700667 var1001)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var2199 var3924 (var437_get/1088891777 var3005 (cast-from-String-to-var3924 var3632))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var3526 String (cast-from-var3924-to-String var2199)) ; Statement: r5 = (java.lang.String) $r4 
 ; Statement: if r5 == null goto $r6 = new java.lang.IllegalArgumentException 
(assert (= var3526 null-String)) ; Cond: r5 == null 
(define-const var3063 var1813 var1813-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2383 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2383)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2383!1 String)
(assert (= var2383!1 ""))
(assert true)
(define-const var2968 String (append/672562846 var2383!1 "Unknown alias [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown alias [") 
(declare-const var2383!2 String)
(assert (= var2383!2 (str.++ var2383!1 "Unknown alias [")))
(assert true)
(define-const var2741 String (append/672562846 var2968 var1001)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2968!1 String)
(assert (= var2968!1 (str.++ var2968 var1001)))
(assert true)
(define-const var1617 String (append/672562846 var2741 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2741!1 String)
(assert (= var2741!1 (str.++ var2741 "]")))
(assert true)
(define-const var3219 String (toString/-2075883882 var1617)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3063 var3219)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3063!1 var1813)
(declare-const var3219!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {aliasReferences/306632084=([org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl], java.util.Map), toLowerCase/415700667=([java.lang.String], java.lang.String), var437_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3924=([java.lang.String], java.lang.Object), cast-from-var3924-to-String=([java.lang.Object], java.lang.String), var1813-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var333=org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl, var1100=r0, var1001=r1, var2766=null_type, var437=java.util.Map, var3005=$r2, var3632=$r3, var3924=java.lang.Object, var2199=$r4, var3526=r5, var1813=java.lang.IllegalArgumentException, var3063=$r6, var2383=$r7, var2968=$r8, var2741=$r9, var1617=$r10, var3219=$r11}
; {org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl=var333, r0=var1100, r1=var1001, null_type=var2766, java.util.Map=var437, $r2=var3005, $r3=var3632, java.lang.Object=var3924, $r4=var2199, r5=var3526, java.lang.IllegalArgumentException=var1813, $r6=var3063, $r7=var2383, $r8=var2968, $r9=var2741, $r10=var1617, $r11=var3219}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.jpa.spi.NativeQueryTupleTransformer$NativeTupleImpl: java.util.Map aliasReferences>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (java.lang.String) $r4;	if r5 == null goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown alias [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2