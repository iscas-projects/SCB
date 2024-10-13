(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3985 0)
(declare-sort var763 0)
(declare-sort var3002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3985_getOwnerType/-523154979 (var3985) ClassObject)
(declare-fun var3985_getRawType/305663496 (var3985) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var763_findRecursiveTypes/-200394003 (var3985) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3985_getActualTypeArguments/-973063842 (var3985) (Array Int ClassObject))
(declare-fun var763_appendAllTo/-1343076024 (String String (Array Int var3002)) String)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3002__ ((Array Int ClassObject)) (Array Int var3002))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3985 var3985)
(declare-const null-ClassObject ClassObject)
(declare-const var641 var3985) ; Statement: r1 := @parameter0: java.lang.reflect.ParameterizedType 
(assert (not (= var641 null-var3985)))
(define-const var770 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var770)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var770!1 String)
(assert (= var770!1 ""))
(define-const var1301 ClassObject (var3985_getOwnerType/-523154979 var641)) ; Statement: r2 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getOwnerType()>() 
(define-const var1658 ClassObject (var3985_getRawType/305663496 var641)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>() 
(define-const var3765 ClassObject (cast-from-ClassObject-to-ClassObject var1658)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r2 != null goto $z0 = r2 instanceof java.lang.Class 
(assert (not (not (= var1301 null-ClassObject)))) ; Negate: Cond: r2 != null  
(assert true)
(define-const var31 String (getName/-1958580599 var3765)) ; Statement: $r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var770!1 var31)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var770!2 String)
(assert (= var770!2 (str.++ var770!1 var31)))
 ; Statement: goto [?= $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1)] 
(assert true) ; Non Conditional
(define-const var3780 (Array Int Int) (var763_findRecursiveTypes/-200394003 var641)) ; Statement: $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1) 
(define-const var2725 Int (getLength-Arr-Int-1 var3780)) ; Statement: $i0 = lengthof $r16 
 ; Statement: if $i0 <= 0 goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(assert (<= var2725 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2194 String (append/-1166366385 var770!2 60)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var770!3 String)
(assert (str.prefixof var770!2 var770!3))
(define-const var1702 (Array Int ClassObject) (var3985_getActualTypeArguments/-973063842 var641)) ; Statement: $r8 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>() 
(define-const var2762 String (var763_appendAllTo/-1343076024 var2194 ", " (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3002__ var1702))) ; Statement: $r10 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.StringBuilder appendAllTo(java.lang.StringBuilder,java.lang.String,java.lang.Object[])>($r9, ", ", $r8) 
(assert true)
;(assert (append/-1166366385 var2762 62)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2762!1 String)
(assert (str.prefixof var2762 var2762!1))
(assert true) ; Non Conditional
(assert true)
(define-const var3687 String (toString/-2075883882 var770!3)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3985_getOwnerType/-523154979=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type), var3985_getRawType/305663496=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.reflect.Type], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var763_findRecursiveTypes/-200394003=([java.lang.reflect.ParameterizedType], int[]), getLength-Arr-Int-1=([int[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3985_getActualTypeArguments/-973063842=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type[]), var763_appendAllTo/-1343076024=([java.lang.StringBuilder, java.lang.String, java.lang.Object[]], java.lang.StringBuilder), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3002__=([java.lang.reflect.Type[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3985=java.lang.reflect.ParameterizedType, var641=r1, var770=$r0, var1301=r2, var1658=$r3, var3765=r4, var31=$r15, var763=org.apache.commons.lang3.reflect.TypeUtils, var3780=$r16, var2725=$i0, var2194=$r9, var1702=$r8, var3002=java.lang.Object, var2762=$r10, var3687=$r11}
; {java.lang.reflect.ParameterizedType=var3985, r1=var641, $r0=var770, r2=var1301, $r3=var1658, r4=var3765, $r15=var31, org.apache.commons.lang3.reflect.TypeUtils=var763, $r16=var3780, $i0=var2725, $r9=var2194, $r8=var1702, java.lang.Object=var3002, $r10=var2762, $r11=var3687}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.ParameterizedType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getOwnerType()>();	$r3 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>();	r4 = (java.lang.Class) $r3;	if r2 != null goto $z0 = r2 instanceof java.lang.Class;	$r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	goto [?= $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1)];	$r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1);	$i0 = lengthof $r16;	if $i0 <= 0 goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r8 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>();	$r10 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.StringBuilder appendAllTo(java.lang.StringBuilder,java.lang.String,java.lang.Object[])>($r9, ", ", $r8);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5