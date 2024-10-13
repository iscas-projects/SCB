(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort var2989 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var349_getRawType/305663496 (var349) ClassObject)
(declare-fun var2989-init () var2989)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var91) String)
(declare-fun cast-from-ClassObject-to-var91 (ClassObject) var91)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2989 String) void)
(declare-const null-var349 var349)
(declare-const var321 var349) ; Statement: r0 := @parameter0: java.lang.reflect.ParameterizedType 
(assert (not (= var321 null-var349)))
(define-const var3356 ClassObject (var349_getRawType/305663496 var321)) ; Statement: r1 = interfaceinvoke r0.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>() 
(define-const var116 Bool true) ; Statement: $z0 = r1 instanceof java.lang.Class 
 ; Statement: if $z0 != 0 goto $r2 = (java.lang.Class) r1 
(assert (not (not (= (ite var116 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2615 var2989 var2989-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var2797 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2797)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2797!1 String)
(assert (= var2797!1 ""))
(assert true)
(define-const var2592 String (append/672562846 var2797!1 "Wait... What!? Type of rawType: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wait... What!? Type of rawType: ") 
(declare-const var2797!2 String)
(assert (= var2797!2 (str.++ var2797!1 "Wait... What!? Type of rawType: ")))
(assert true)
(define-const var3183 String (append/-1031950772 var2592 (cast-from-ClassObject-to-var91 var3356))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2592!1 String)
(assert (str.prefixof var2592 var2592!1))
(assert true)
(define-const var3411 String (toString/-2075883882 var3183)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2615 var3411)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7) 

(declare-const var2615!1 var2989)
(declare-const var3411!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var349_getRawType/305663496=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type), var2989-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var91=([java.lang.reflect.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var349=java.lang.reflect.ParameterizedType, var321=r0, var3356=r1, var116=$z0, var2989=java.lang.IllegalStateException, var2615=$r3, var2797=$r4, var2592=$r5, var91=java.lang.Object, var3183=$r6, var3411=$r7}
; {java.lang.reflect.ParameterizedType=var349, r0=var321, r1=var3356, $z0=var116, java.lang.IllegalStateException=var2989, $r3=var2615, $r4=var2797, $r5=var2592, java.lang.Object=var91, $r6=var3183, $r7=var3411}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.ParameterizedType;	r1 = interfaceinvoke r0.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>();	$z0 = r1 instanceof java.lang.Class;	if $z0 != 0 goto $r2 = (java.lang.Class) r1;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wait... What!? Type of rawType: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2