(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1048 0)
(declare-sort var3673 0)
(declare-sort var1792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1792!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeClass/-1250152788 (var3673) ClassObject)
(declare-fun cast-from-var1048-to-var3673 (var1048) var3673)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1048 var1048)
(declare-const var3243 var1048) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.types.ObjectType 
(assert (not (= var3243 null-var1048)))
(define-const var1637 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1637)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1637!1 String)
(assert (= var1637!1 ""))
(assert true)
(define-const var925 String (append/672562846 var1637!1 "object")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object") 
(declare-const var1637!2 String)
(assert (= var1637!2 (str.++ var1637!1 "object")))
(assert true)
(define-const var2401 ClassObject (getTypeClass/-1250152788 (cast-from-var1048-to-var3673 var3243))) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ObjectType: java.lang.Class getTypeClass()>() 
 ; Statement: if $r2 == class "Ljava/lang/Object;" goto $r12 = "" 
(assert (not (= var2401 var1792!class))) ; Negate: Cond: $r2 == class "Ljava/lang/Object;"  
(define-const var1553 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1553)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1553!1 String)
(assert (= var1553!1 ""))
(assert true)
(define-const var3833 String (append/672562846 var1553!1 "<type=")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<type=") 
(declare-const var1553!2 String)
(assert (= var1553!2 (str.++ var1553!1 "<type=")))
(assert true)
(define-const var2949 ClassObject (getTypeClass/-1250152788 (cast-from-var1048-to-var3673 var3243))) ; Statement: $r7 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ObjectType: java.lang.Class getTypeClass()>() 
(assert true)
(define-const var3437 String (getSimpleName/-390194377 var2949)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1837 String (append/672562846 var3833 var3437)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 var3437)))
(assert true)
(define-const var1852 String (append/-1166366385 var1837 62)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1837!1 String)
(assert (str.prefixof var1837 var1837!1))
(assert true)
(define-const var521 String (toString/-2075883882 var1852)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3736 String (append/672562846 var925 var521)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var925!1 String)
(assert (= var925!1 (str.++ var925 var521)))
(assert true)
(define-const var2739 String (toString/-2075883882 var3736)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeClass/-1250152788=([jdk.nashorn.internal.codegen.types.Type], java.lang.Class), cast-from-var1048-to-var3673=([jdk.nashorn.internal.codegen.types.ObjectType], jdk.nashorn.internal.codegen.types.Type), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1048=jdk.nashorn.internal.codegen.types.ObjectType, var3243=r1, var1637=$r0, var925=$r3, var3673=jdk.nashorn.internal.codegen.types.Type, var2401=$r2, var1792=java.lang.Object, var1553=$r6, var3833=$r9, var2949=$r7, var3437=$r8, var1837=$r10, var1852=$r11, var521=$r12, var3736=$r4, var2739=$r5}
; {jdk.nashorn.internal.codegen.types.ObjectType=var1048, r1=var3243, $r0=var1637, $r3=var925, jdk.nashorn.internal.codegen.types.Type=var3673, $r2=var2401, java.lang.Object=var1792, $r6=var1553, $r9=var3833, $r7=var2949, $r8=var3437, $r10=var1837, $r11=var1852, $r12=var521, $r4=var3736, $r5=var2739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: jdk.nashorn.internal.codegen.types.ObjectType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ObjectType: java.lang.Class getTypeClass()>();	if $r2 == class "Ljava/lang/Object;" goto $r12 = "";	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<type=");	$r7 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ObjectType: java.lang.Class getTypeClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3