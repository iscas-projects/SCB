(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2903 0)
(declare-sort var3696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2903_getOwnerType/-523154979 (var2903) ClassObject)
(declare-fun var2903_getRawType/305663496 (var2903) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3696_findRecursiveTypes/-200394003 (var2903) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2903_getActualTypeArguments/-973063842 (var2903) (Array Int ClassObject))
(declare-fun var3696_appendRecursiveTypes/-1300774235 (String (Array Int Int) (Array Int ClassObject)) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2903 var2903)
(declare-const null-ClassObject ClassObject)
(declare-const var1029 var2903) ; Statement: r1 := @parameter0: java.lang.reflect.ParameterizedType 
(assert (not (= var1029 null-var2903)))
(define-const var919 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var919)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var919!1 String)
(assert (= var919!1 ""))
(define-const var1048 ClassObject (var2903_getOwnerType/-523154979 var1029)) ; Statement: r2 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getOwnerType()>() 
(define-const var11 ClassObject (var2903_getRawType/305663496 var1029)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>() 
(define-const var958 ClassObject (cast-from-ClassObject-to-ClassObject var11)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r2 != null goto $z0 = r2 instanceof java.lang.Class 
(assert (not (not (= var1048 null-ClassObject)))) ; Negate: Cond: r2 != null  
(assert true)
(define-const var3546 String (getName/-1958580599 var958)) ; Statement: $r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var919!1 var3546)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var919!2 String)
(assert (= var919!2 (str.++ var919!1 var3546)))
 ; Statement: goto [?= $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1)] 
(assert true) ; Non Conditional
(define-const var1766 (Array Int Int) (var3696_findRecursiveTypes/-200394003 var1029)) ; Statement: $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1) 
(define-const var2401 Int (getLength-Arr-Int-1 var1766)) ; Statement: $i0 = lengthof $r16 
 ; Statement: if $i0 <= 0 goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(assert (not (<= var2401 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1846 (Array Int ClassObject) (var2903_getActualTypeArguments/-973063842 var1029)) ; Statement: $r12 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>() 
;(assert (var3696_appendRecursiveTypes/-1300774235 var919!2 var1766 var1846)) ; Statement: staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: void appendRecursiveTypes(java.lang.StringBuilder,int[],java.lang.reflect.Type[])>($r0, $r16, $r12) 

(declare-const var919!3 String)
(declare-const var1766!1 (Array Int Int))
(declare-const var1846!1 (Array Int ClassObject))
 ; Statement: goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3194 String (toString/-2075883882 var919!3)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2903_getOwnerType/-523154979=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type), var2903_getRawType/305663496=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.reflect.Type], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3696_findRecursiveTypes/-200394003=([java.lang.reflect.ParameterizedType], int[]), getLength-Arr-Int-1=([int[]], int), var2903_getActualTypeArguments/-973063842=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type[]), var3696_appendRecursiveTypes/-1300774235=([java.lang.StringBuilder, int[], java.lang.reflect.Type[]], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2903=java.lang.reflect.ParameterizedType, var1029=r1, var919=$r0, var1048=r2, var11=$r3, var958=r4, var3546=$r15, var3696=org.apache.commons.lang3.reflect.TypeUtils, var1766=$r16, var2401=$i0, var1846=$r12, var3194=$r11}
; {java.lang.reflect.ParameterizedType=var2903, r1=var1029, $r0=var919, r2=var1048, $r3=var11, r4=var958, $r15=var3546, org.apache.commons.lang3.reflect.TypeUtils=var3696, $r16=var1766, $i0=var2401, $r12=var1846, $r11=var3194}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.ParameterizedType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getOwnerType()>();	$r3 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>();	r4 = (java.lang.Class) $r3;	if r2 != null goto $z0 = r2 instanceof java.lang.Class;	$r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	goto [?= $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1)];	$r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: int[] findRecursiveTypes(java.lang.reflect.ParameterizedType)>(r1);	$i0 = lengthof $r16;	if $i0 <= 0 goto $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r12 = interfaceinvoke r1.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>();	staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: void appendRecursiveTypes(java.lang.StringBuilder,int[],java.lang.reflect.Type[])>($r0, $r16, $r12);	goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5