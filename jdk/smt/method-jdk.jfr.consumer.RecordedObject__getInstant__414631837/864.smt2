(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort var2956 0)
(declare-sort var2184 0)
(declare-sort var2105 0)
(declare-sort var492 0)
(declare-sort var1149 0)
(declare-sort var350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1149!class ClassObject)
(declare-fun descriptors/-1914112014 (var2014) var2184)
(declare-fun getValueDescriptor/-940786240 (var2014 var2184 String String) var2105)
(declare-fun getAnnotation/790165593 (var2105 ClassObject) var492)
(declare-fun cast-from-var492-to-var1149 (var492) var1149)
(declare-fun var350-init () var350)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeName/-1561139576 (var2105) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var350 String) void)
(declare-const null-var2014 var2014)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-NullType var2956)
(declare-const null-var1149 var1149)
(declare-const var2396 var2014) ; Statement: r0 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var2396 null-var2014)))
(declare-const var2968 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2968 null-Int)))
(declare-const var3558 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3558 null-String)))
(define-const var3295 var2184 (descriptors/-1914112014 var2396)) ; Statement: $r2 = r0.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors> 
(assert true)
(define-const var1564 var2105 (getValueDescriptor/-940786240 var2396 var3295 var3558 null-String)) ; Statement: r3 = specialinvoke r0.<jdk.jfr.consumer.RecordedObject: jdk.jfr.ValueDescriptor getValueDescriptor(java.util.List,java.lang.String,java.lang.String)>($r2, r1, null) 
(assert true)
(define-const var3417 var492 (getAnnotation/790165593 var1564 var1149!class)) ; Statement: $r4 = virtualinvoke r3.<jdk.jfr.ValueDescriptor: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljdk/jfr/Timestamp;") 
(define-const var1969 var1149 (cast-from-var492-to-var1149 var3417)) ; Statement: r5 = (jdk.jfr.Timestamp) $r4 
 ; Statement: if r5 == null goto $r6 = new java.lang.IllegalArgumentException 
(assert (= var1969 null-var1149)) ; Cond: r5 == null 
(define-const var2825 var350 var350-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var678 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var678)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var678!1 String)
(assert (= var678!1 ""))
(assert true)
(define-const var3038 String (append/672562846 var678!1 "Attempt to get ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to get ") 
(declare-const var678!2 String)
(assert (= var678!2 (str.++ var678!1 "Attempt to get ")))
(assert true)
(define-const var2916 String (getTypeName/-1561139576 var1564)) ; Statement: $r8 = virtualinvoke r3.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>() 
(assert true)
(define-const var2946 String (append/672562846 var3038 var2916)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3038!1 String)
(assert (= var3038!1 (str.++ var3038 var2916)))
(assert true)
(define-const var10 String (append/672562846 var2946 " field \u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" field \"") 
(declare-const var2946!1 String)
(assert (= var2946!1 (str.++ var2946 " field \u0022")))
(assert true)
(define-const var816 String (append/672562846 var10 var3558)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var10!1 String)
(assert (= var10!1 (str.++ var10 var3558)))
(assert true)
(define-const var3789 String (append/672562846 var816 "\u0022 with missing @Timestamp")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" with missing @Timestamp") 
(declare-const var816!1 String)
(assert (= var816!1 (str.++ var816 "\u0022 with missing @Timestamp")))
(assert true)
(define-const var263 String (toString/-2075883882 var3789)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2825 var263)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2825!1 var350)
(declare-const var263!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptors/-1914112014=([jdk.jfr.consumer.RecordedObject], java.util.List), getValueDescriptor/-940786240=([jdk.jfr.consumer.RecordedObject, java.util.List, java.lang.String, java.lang.String], jdk.jfr.ValueDescriptor), getAnnotation/790165593=([jdk.jfr.ValueDescriptor, java.lang.Class], java.lang.annotation.Annotation), cast-from-var492-to-var1149=([java.lang.annotation.Annotation], jdk.jfr.Timestamp), var350-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeName/-1561139576=([jdk.jfr.ValueDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2014=jdk.jfr.consumer.RecordedObject, var2396=r0, var2968=l0, var3558=r1, var2956=null_type, var2184=java.util.List, var3295=$r2, var2105=jdk.jfr.ValueDescriptor, var1564=r3, var492=java.lang.annotation.Annotation, var1149=jdk.jfr.Timestamp, var3417=$r4, var1969=r5, var350=java.lang.IllegalArgumentException, var2825=$r6, var678=$r7, var3038=$r9, var2916=$r8, var2946=$r10, var10=$r11, var816=$r12, var3789=$r13, var263=$r14}
; {jdk.jfr.consumer.RecordedObject=var2014, r0=var2396, l0=var2968, r1=var3558, null_type=var2956, java.util.List=var2184, $r2=var3295, jdk.jfr.ValueDescriptor=var2105, r3=var1564, java.lang.annotation.Annotation=var492, jdk.jfr.Timestamp=var1149, $r4=var3417, r5=var1969, java.lang.IllegalArgumentException=var350, $r6=var2825, $r7=var678, $r9=var3038, $r8=var2916, $r10=var2946, $r11=var10, $r12=var816, $r13=var3789, $r14=var263}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.consumer.RecordedObject;	l0 := @parameter0: long;	r1 := @parameter1: java.lang.String;	$r2 = r0.<jdk.jfr.consumer.RecordedObject: java.util.List descriptors>;	r3 = specialinvoke r0.<jdk.jfr.consumer.RecordedObject: jdk.jfr.ValueDescriptor getValueDescriptor(java.util.List,java.lang.String,java.lang.String)>($r2, r1, null);	$r4 = virtualinvoke r3.<jdk.jfr.ValueDescriptor: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljdk/jfr/Timestamp;");	r5 = (jdk.jfr.Timestamp) $r4;	if r5 == null goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to get ");	$r8 = virtualinvoke r3.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" field \"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" with missing @Timestamp");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r6
;block_num 2