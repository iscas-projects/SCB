(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2323 0)
(declare-sort var1160 0)
(declare-sort var2318 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun getTyped/840911700 (var2318 String ClassObject var1160) var1160)
(declare-fun cast-from-var2323-to-var2318 (var2323) var2318)
(declare-fun cast-from-var1160-to-String (var1160) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2323 var2323)
(declare-const null-NullType var712)
(declare-const null-var1160 var1160)
(declare-const var335 var2323) ; Statement: r0 := @this: jdk.jfr.consumer.RecordedClass 
(assert (not (= var335 null-var2323)))
(assert true)
(define-const var1887 var1160 (getTyped/840911700 (cast-from-var2323-to-var2318 var335) "name" String!class null-var1160)) ; Statement: $r1 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: java.lang.Object getTyped(java.lang.String,java.lang.Class,java.lang.Object)>("name", class "Ljava/lang/String;", null) 
(define-const var1910 String (cast-from-var1160-to-String var1887)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var2527 String (replace/2138489945 var1910 (cast-from-String-to-String "/") (cast-from-String-to-String "."))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".") 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTyped/840911700=([jdk.jfr.consumer.RecordedObject, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var2323-to-var2318=([jdk.jfr.consumer.RecordedClass], jdk.jfr.consumer.RecordedObject), cast-from-var1160-to-String=([java.lang.Object], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2323=jdk.jfr.consumer.RecordedClass, var335=r0, var1160=java.lang.Object, var2318=jdk.jfr.consumer.RecordedObject, var1887=$r1, var1910=$r2, var2527=$r3, var712=null_type}
; {jdk.jfr.consumer.RecordedClass=var2323, r0=var335, java.lang.Object=var1160, jdk.jfr.consumer.RecordedObject=var2318, $r1=var1887, $r2=var1910, $r3=var2527, null_type=var712}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: jdk.jfr.consumer.RecordedClass;	$r1 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: java.lang.Object getTyped(java.lang.String,java.lang.Class,java.lang.Object)>("name", class "Ljava/lang/String;", null);	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".");	return $r3
;block_num 1