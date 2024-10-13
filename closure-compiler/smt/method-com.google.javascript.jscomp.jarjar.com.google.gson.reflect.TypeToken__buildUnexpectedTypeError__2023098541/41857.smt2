(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var998 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var998) ClassObject)
(declare-fun cast-from-ClassObject-to-var998 (ClassObject) var998)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun toString/-522406933 (var998) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1262-init () var1262)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1262 var998) void)
(declare-fun cast-from-String-to-var998 (String) var998)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var7 ClassObject) ; Statement: r2 := @parameter0: java.lang.reflect.Type 
(assert (not (= var7 null-ClassObject)))
(declare-const var20 (Array Int ClassObject)) ; Statement: r1 := @parameter1: java.lang.Class[] 
(assert (not (= var20 null-__Array__Int__ClassObject__)))
(define-const var634 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var634 "Unexpected type. Expected one of: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unexpected type. Expected one of: ") 
(declare-const var634!1 String)
(assert (= var634!1 "Unexpected type. Expected one of: "))
(define-const var632 Int (getLength-Arr-ClassObject-1 var20)) ; Statement: i0 = lengthof r1 
(define-const var1179 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ") 
(assert (>= var1179 var632)) ; Cond: i1 >= i0 
(assert true)
(define-const var721 String (append/672562846 var634!1 "but got: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ") 
(declare-const var634!2 String)
(assert (= var634!2 (str.++ var634!1 "but got: ")))
(assert true)
(define-const var3522 ClassObject (getClass/1258963082 (cast-from-ClassObject-to-var998 var7))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var773 String (getName/-1958580599 var3522)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var238 String (append/672562846 var721 var773)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var721!1 String)
(assert (= var721!1 (str.++ var721 var773)))
(assert true)
(define-const var1123 String (append/672562846 var238 ", for type token: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", for type token: ") 
(declare-const var238!1 String)
(assert (= var238!1 (str.++ var238 ", for type token: ")))
(assert true)
(define-const var1645 String (toString/-522406933 (cast-from-ClassObject-to-var998 var7))) ; Statement: $r7 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var554 String (append/672562846 var1123 var1645)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1123!1 String)
(assert (= var1123!1 (str.++ var1123 var1645)))
(assert true)
;(assert (append/-1166366385 var554 46)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var554!1 String)
(assert (str.prefixof var554 var554!1))
(define-const var1686 var1262 var1262-init) ; Statement: $r10 = new java.lang.AssertionError 
(assert true)
(define-const var1906 String (toString/-2075883882 var634!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1686 (cast-from-String-to-var998 var1906))) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r11) 

(declare-const var1686!1 var1262)
(declare-const var1906!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-ClassObject-to-var998=([java.lang.reflect.Type], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1262-init=([], java.lang.AssertionError), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var998=([java.lang.String], java.lang.Object)}
; {var7=r2, var20=r1, var634=$r0, var632=i0, var1179=i1, var721=$r5, var998=java.lang.Object, var3522=$r3, var773=$r4, var238=$r6, var1123=$r8, var1645=$r7, var554=$r9, var1262=java.lang.AssertionError, var1686=$r10, var1906=$r11}
; {r2=var7, r1=var20, $r0=var634, i0=var632, i1=var1179, $r5=var721, java.lang.Object=var998, $r3=var3522, $r4=var773, $r6=var238, $r8=var1123, $r7=var1645, $r9=var554, java.lang.AssertionError=var1262, $r10=var1686, $r11=var1906}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.reflect.Type;	r1 := @parameter1: java.lang.Class[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unexpected type. Expected one of: ");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", for type token: ");	$r7 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r10 = new java.lang.AssertionError;	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r11);	return $r10
;block_num 3