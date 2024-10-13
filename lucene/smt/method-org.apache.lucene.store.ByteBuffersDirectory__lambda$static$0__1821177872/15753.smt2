(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1061 0)
(declare-sort var2891 0)
(declare-sort var2474 0)
(declare-sort var2418 0)
(declare-sort var3000 0)
(declare-sort var804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var804!class ClassObject)
(declare-fun toDataInput/31657219 (var2891) var2474)
(declare-fun arr-var3000-init () (Array Int var3000))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var3000 (String) var3000)
(declare-fun toString/607077136 (var2474) String)
(declare-fun String_format/-647569892 (var2418 String (Array Int var3000)) String)
(declare-fun var804-init () var804)
(declare-fun <init>/1801021658 (var804 var2474 String) void)
(declare-const null-String String)
(declare-const null-var2891 var2891)
(declare-const var2418-ROOT var2418)
(declare-const null-__Array__Int__var3000__ (Array Int var3000))
(declare-const var2483 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2483 null-String)))
(declare-const var2353 var2891) ; Statement: r0 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var2353 null-var2891)))
(assert true)
(define-const var3472 var2474 (toDataInput/31657219 var2353)) ; Statement: r1 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: org.apache.lucene.store.ByteBuffersDataInput toDataInput()>() 
(define-const var3692 var2418 var2418-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3922 (Array Int var3000) arr-var3000-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var46 ClassObject var804!class) ; Statement: $r3 = class "Lorg/apache/lucene/store/ByteBuffersIndexInput;" 
(assert true)
(define-const var1750 String (getSimpleName/-390194377 var46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var3922!1 (Array Int var3000))
(assert (not (= var3922!1 null-__Array__Int__var3000__)))
(assert (= (select var3922!1 0) (cast-from-String-to-var3000 var1750))) ; Statement: $r2[0] = $r5 
(declare-const var3922!2 (Array Int var3000))
(assert (not (= var3922!2 null-__Array__Int__var3000__)))
(assert (= (select var3922!2 1) (cast-from-String-to-var3000 var2483))) ; Statement: $r2[1] = r6 
(assert true)
(define-const var218 String (toString/607077136 var3472)) ; Statement: $r7 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: java.lang.String toString()>() 
(declare-const var3922!3 (Array Int var3000))
(assert (not (= var3922!3 null-__Array__Int__var3000__)))
(assert (= (select var3922!3 2) (cast-from-String-to-var3000 var218))) ; Statement: $r2[2] = $r7 
(define-const var1726 String (String_format/-647569892 var3692 "%s (file=%s, buffers=%s)" var3922!3)) ; Statement: r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "%s (file=%s, buffers=%s)", $r2) 
(define-const var430 var804 var804-init) ; Statement: $r9 = new org.apache.lucene.store.ByteBuffersIndexInput 
(assert true)
;(assert (<init>/1801021658 var430 var3472 var1726)) ; Statement: specialinvoke $r9.<org.apache.lucene.store.ByteBuffersIndexInput: void <init>(org.apache.lucene.store.ByteBuffersDataInput,java.lang.String)>(r1, r8) 

(declare-const var430!1 var804)
(declare-const var3472!1 var2474)
(declare-const var1726!1 String)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {toDataInput/31657219=([org.apache.lucene.store.ByteBuffersDataOutput], org.apache.lucene.store.ByteBuffersDataInput), arr-var3000-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var3000=([java.lang.String], java.lang.Object), toString/607077136=([org.apache.lucene.store.ByteBuffersDataInput], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var804-init=([], org.apache.lucene.store.ByteBuffersIndexInput), <init>/1801021658=([org.apache.lucene.store.ByteBuffersIndexInput, org.apache.lucene.store.ByteBuffersDataInput, java.lang.String], void)}
; {var2483=r6, var1061=null_type, var2891=org.apache.lucene.store.ByteBuffersDataOutput, var2353=r0, var2474=org.apache.lucene.store.ByteBuffersDataInput, var3472=r1, var2418=java.util.Locale, var3692=$r4, var3000=java.lang.Object, var3922=$r2, var804=org.apache.lucene.store.ByteBuffersIndexInput, var46=$r3, var1750=$r5, var218=$r7, var1726=r8, var430=$r9}
; {r6=var2483, null_type=var1061, org.apache.lucene.store.ByteBuffersDataOutput=var2891, r0=var2353, org.apache.lucene.store.ByteBuffersDataInput=var2474, r1=var3472, java.util.Locale=var2418, $r4=var3692, java.lang.Object=var3000, $r2=var3922, org.apache.lucene.store.ByteBuffersIndexInput=var804, $r3=var46, $r5=var1750, $r7=var218, r8=var1726, $r9=var430}
;seq <org.apache.lucene.store.ByteBuffersDataInput: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput;	r1 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: org.apache.lucene.store.ByteBuffersDataInput toDataInput()>();	$r4 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = newarray (java.lang.Object)[3];	$r3 = class "Lorg/apache/lucene/store/ByteBuffersIndexInput;";	$r5 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>();	$r2[0] = $r5;	$r2[1] = r6;	$r7 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: java.lang.String toString()>();	$r2[2] = $r7;	r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "%s (file=%s, buffers=%s)", $r2);	$r9 = new org.apache.lucene.store.ByteBuffersIndexInput;	specialinvoke $r9.<org.apache.lucene.store.ByteBuffersIndexInput: void <init>(org.apache.lucene.store.ByteBuffersDataInput,java.lang.String)>(r1, r8);	return $r9
;block_num 1