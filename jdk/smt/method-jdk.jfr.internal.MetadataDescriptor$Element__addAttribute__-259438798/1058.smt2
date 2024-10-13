(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2855 0)
(declare-sort var562 0)
(declare-sort var498 0)
(declare-sort var137 0)
(declare-sort var3694 0)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/1605297266 (var2855) var137)
(declare-fun var3694-init () var3694)
(declare-fun String_valueOf/-333372740 (var498) String)
(declare-fun <init>/-157208394 (var3694 String String var1135) void)
(declare-fun var137_add/328494887 (var137 var498) Bool)
(declare-fun cast-from-var3694-to-var498 (var3694) var498)
(declare-const null-var2855 var2855)
(declare-const null-String String)
(declare-const null-var498 var498)
(declare-const null-NullType var562)
(declare-const null-var1135 var1135)
(declare-const var2071 var2855) ; Statement: r0 := @this: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var2071 null-var2855)))
(declare-const var248 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var248 null-String)))
(declare-const var134 var498) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var134 null-var498)))
(define-const var2958 var137 (attributes/1605297266 var2071)) ; Statement: $r4 = r0.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List attributes> 
(define-const var2370 var3694 var3694-init) ; Statement: $r1 = new jdk.jfr.internal.MetadataDescriptor$Attribute 
(define-const var2162 String (String_valueOf/-333372740 var134)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3) 
(assert true)
;(assert (<init>/-157208394 var2370 var248 var2162 null-var1135)) ; Statement: specialinvoke $r1.<jdk.jfr.internal.MetadataDescriptor$Attribute: void <init>(java.lang.String,java.lang.String,jdk.jfr.internal.MetadataDescriptor$1)>(r2, $r5, null) 

(declare-const var2370!1 var3694)
(declare-const var248!1 String)
(declare-const var2162!1 String)
(declare-const var232 var562)
;(assert (var137_add/328494887 var2958 (cast-from-var3694-to-var498 var2370!1))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean add(java.lang.Object)>($r1) 

(declare-const var2958!1 var137)
(declare-const var2370!2 var3694)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/1605297266=([jdk.jfr.internal.MetadataDescriptor$Element], java.util.List), var3694-init=([], jdk.jfr.internal.MetadataDescriptor$Attribute), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-157208394=([jdk.jfr.internal.MetadataDescriptor$Attribute, java.lang.String, java.lang.String, jdk.jfr.internal.MetadataDescriptor$1], void), var137_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3694-to-var498=([jdk.jfr.internal.MetadataDescriptor$Attribute], java.lang.Object)}
; {var2855=jdk.jfr.internal.MetadataDescriptor$Element, var2071=r0, var248=r2, var562=null_type, var498=java.lang.Object, var134=r3, var137=java.util.List, var2958=$r4, var3694=jdk.jfr.internal.MetadataDescriptor$Attribute, var2370=$r1, var2162=$r5, var1135=jdk.jfr.internal.MetadataDescriptor$1, var232=null}
; {jdk.jfr.internal.MetadataDescriptor$Element=var2855, r0=var2071, r2=var248, null_type=var562, java.lang.Object=var498, r3=var134, java.util.List=var137, $r4=var2958, jdk.jfr.internal.MetadataDescriptor$Attribute=var3694, $r1=var2370, $r5=var2162, jdk.jfr.internal.MetadataDescriptor$1=var1135, null=var232}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.MetadataDescriptor$Element;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	$r4 = r0.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List attributes>;	$r1 = new jdk.jfr.internal.MetadataDescriptor$Attribute;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3);	specialinvoke $r1.<jdk.jfr.internal.MetadataDescriptor$Attribute: void <init>(java.lang.String,java.lang.String,jdk.jfr.internal.MetadataDescriptor$1)>(r2, $r5, null);	interfaceinvoke $r4.<java.util.List: boolean add(java.lang.Object)>($r1);	return
;block_num 1