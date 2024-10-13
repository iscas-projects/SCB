(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var239 0)
(declare-sort var2898 0)
(declare-sort var3243 0)
(declare-sort var3753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var239_requireNonNull/1378936425 (var2898 String) var2898)
(declare-fun cast-from-ClassObject-to-var2898 (ClassObject) var2898)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var3243_getKnownType/-651578462 (ClassObject) var3243)
(declare-fun var3753-init () var3753)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun <init>/875830710 (var3753 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3243 var3243)
(declare-const var3399 ClassObject) ; Statement: r13 := @parameter0: java.lang.Class 
(assert (not (= var3399 null-ClassObject)))
(declare-const var3996 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3996 null-String)))
(define-const var3806 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3806)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3806!1 String)
(assert (= var3806!1 ""))
(assert true)
(define-const var235 String (append/672562846 var3806!1 "Null is not a valid type for value descriptor ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Null is not a valid type for value descriptor ") 
(declare-const var3806!2 String)
(assert (= var3806!2 (str.++ var3806!1 "Null is not a valid type for value descriptor ")))
(assert true)
(define-const var3944 String (append/672562846 var235 var3996)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var235!1 String)
(assert (= var235!1 (str.++ var235 var3996)))
(assert true)
(define-const var2951 String (toString/-2075883882 var3944)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var239_requireNonNull/1378936425 (cast-from-ClassObject-to-var2898 var3399) var2951)) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r13, $r4) 

(declare-const var3399!1 ClassObject)
(declare-const var2951!1 String)
(assert true)
(define-const var1756 Bool (isArray/1369458484 var3399!1)) ; Statement: $z0 = virtualinvoke r13.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $r14 = staticinvoke <jdk.jfr.internal.Type: jdk.jfr.internal.Type getKnownType(java.lang.Class)>(r13) 
(assert (= (ite var1756 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3612 var3243 (var3243_getKnownType/-651578462 var3399!1)) ; Statement: $r14 = staticinvoke <jdk.jfr.internal.Type: jdk.jfr.internal.Type getKnownType(java.lang.Class)>(r13) 
 ; Statement: if $r14 == null goto $r5 = new java.lang.IllegalArgumentException 
(assert (= var3612 null-var3243)) ; Cond: $r14 == null 
(define-const var2985 var3753 var3753-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1697 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1697)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1697!1 String)
(assert (= var1697!1 ""))
(assert true)
(define-const var1816 String (append/672562846 var1697!1 "Only primitive types, java.lang.Thread, java.lang.String and java.lang.Class are allowed for value descriptors. ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Only primitive types, java.lang.Thread, java.lang.String and java.lang.Class are allowed for value descriptors. ") 
(declare-const var1697!2 String)
(assert (= var1697!2 (str.++ var1697!1 "Only primitive types, java.lang.Thread, java.lang.String and java.lang.Class are allowed for value descriptors. ")))
(assert true)
(define-const var2361 String (getName/-1958580599 var3399!1)) ; Statement: $r7 = virtualinvoke r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3162 String (append/672562846 var1816 var2361)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1816!1 String)
(assert (= var1816!1 (str.++ var1816 var2361)))
(assert true)
(define-const var363 String (toString/-2075883882 var3162)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2985 var363)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2985!1 var3753)
(declare-const var363!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var239_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-ClassObject-to-var2898=([java.lang.Class], java.lang.Object), isArray/1369458484=([java.lang.Class], boolean), var3243_getKnownType/-651578462=([java.lang.Class], jdk.jfr.internal.Type), var3753-init=([], java.lang.IllegalArgumentException), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3399=r13, var3996=r1, var3830=null_type, var3806=$r0, var235=$r2, var3944=$r3, var2951=$r4, var239=java.util.Objects, var2898=java.lang.Object, var1756=$z0, var3243=jdk.jfr.internal.Type, var3612=$r14, var3753=java.lang.IllegalArgumentException, var2985=$r5, var1697=$r6, var1816=$r8, var2361=$r7, var3162=$r9, var363=$r10}
; {r13=var3399, r1=var3996, null_type=var3830, $r0=var3806, $r2=var235, $r3=var3944, $r4=var2951, java.util.Objects=var239, java.lang.Object=var2898, $z0=var1756, jdk.jfr.internal.Type=var3243, $r14=var3612, java.lang.IllegalArgumentException=var3753, $r5=var2985, $r6=var1697, $r8=var1816, $r7=var2361, $r9=var3162, $r10=var363}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Null is not a valid type for value descriptor ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r13, $r4);	$z0 = virtualinvoke r13.<java.lang.Class: boolean isArray()>();	if $z0 == 0 goto $r14 = staticinvoke <jdk.jfr.internal.Type: jdk.jfr.internal.Type getKnownType(java.lang.Class)>(r13);	$r14 = staticinvoke <jdk.jfr.internal.Type: jdk.jfr.internal.Type getKnownType(java.lang.Class)>(r13);	if $r14 == null goto $r5 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Only primitive types, java.lang.Thread, java.lang.String and java.lang.Class are allowed for value descriptors. ");	$r7 = virtualinvoke r13.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 3