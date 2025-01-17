(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2100 0)
(declare-sort var1568 0)
(declare-sort var1545 0)
(declare-sort var3384 0)
(declare-sort var3399 0)
(declare-sort var1633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getType/343118090 (var1568) var1545)
(declare-fun getName/127192176 (var1545) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/125792153 (var1568) String)
(declare-fun var3384-init () var3384)
(declare-fun <init>/636888916 (var3384 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getDescriptor/-179772683 (var1568) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun decodeDescriptors/1670829170 (var2100 String String) var3399)
(declare-fun var3399_iterator/-912451715 (var3399) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1031950772 (String var1633) String)
(declare-fun cast-from-var3384-to-var1633 (var3384) var1633)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2100 var2100)
(declare-const null-var1568 var1568)
(declare-const var1972 var2100) ; Statement: r9 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var1972 null-var2100)))
(declare-const var3880 var1568) ; Statement: r1 := @parameter0: jdk.jfr.consumer.RecordedMethod 
(assert (not (= var3880 null-var1568)))
(define-const var1011 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(assert true)
(define-const var2002 var1545 (getType/343118090 var3880)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.RecordedClass getType()>() 
(assert true)
(define-const var769 String (getName/127192176 var2002)) ; Statement: $r3 = virtualinvoke $r2.<jdk.jfr.consumer.RecordedClass: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1011!1 var769)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 var769)))
(assert true)
;(assert (append/672562846 var1011!2 ".")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1011!3 String)
(assert (= var1011!3 (str.++ var1011!2 ".")))
(assert true)
(define-const var3834 String (getName/125792153 var3880)) ; Statement: $r4 = virtualinvoke r1.<jdk.jfr.consumer.RecordedMethod: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1011!3 var3834)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1011!4 String)
(assert (= var1011!4 (str.++ var1011!3 var3834)))
(assert true)
;(assert (append/672562846 var1011!4 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1011!5 String)
(assert (= var1011!5 (str.++ var1011!4 "(")))
(define-const var51 var3384 var3384-init) ; Statement: $r5 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var51 (cast-from-String-to-String ", "))) ; Statement: specialinvoke $r5.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ") 

(declare-const var51!1 var3384)
(declare-const var943 String)
(assert true)
(define-const var2344 String (getDescriptor/-179772683 var3880)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.consumer.RecordedMethod: java.lang.String getDescriptor()>() 
(assert true)
(define-const var122 String (replace/2138489945 var2344 (cast-from-String-to-String "/") (cast-from-String-to-String "."))) ; Statement: r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".") 
(assert true)
(define-const var1999 Int (lastIndexOf/-618837785 var122 ")")) ; Statement: $i0 = virtualinvoke r7.<java.lang.String: int lastIndexOf(java.lang.String)>(")") 
(assert (and true (and (>= 1 0) (>= (str.len var122) var1999) (>= var1999 1))))
(define-const var3336 String (substring/-1240304868 var122 1 var1999)) ; Statement: r8 = virtualinvoke r7.<java.lang.String: java.lang.String substring(int,int)>(1, $i0) 
(assert true)
(define-const var653 var3399 (decodeDescriptors/1670829170 var1972 var3336 "")) ; Statement: $r10 = virtualinvoke r9.<jdk.jfr.internal.tool.PrettyWriter: java.util.List decodeDescriptors(java.lang.String,java.lang.String)>(r8, "") 
(define-const var308 Iterator (var3399_iterator/-912451715 var653)) ; Statement: r11 = interfaceinvoke $r10.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1033 Bool (Iterator_hasNext/-1669924200 var308)) ; Statement: $z0 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(assert (= (ite var1033 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1031950772 var1011!5 (cast-from-var3384-to-var1633 var51!1))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1011!6 String)
(assert (str.prefixof var1011!5 var1011!6))
(assert true)
;(assert (append/672562846 var1011!6 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1011!7 String)
(assert (= var1011!7 (str.++ var1011!6 ")")))
(assert true)
(define-const var1645 String (toString/-2075883882 var1011!7)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getType/343118090=([jdk.jfr.consumer.RecordedMethod], jdk.jfr.consumer.RecordedClass), getName/127192176=([jdk.jfr.consumer.RecordedClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/125792153=([jdk.jfr.consumer.RecordedMethod], java.lang.String), var3384-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getDescriptor/-179772683=([jdk.jfr.consumer.RecordedMethod], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), decodeDescriptors/1670829170=([jdk.jfr.internal.tool.PrettyWriter, java.lang.String, java.lang.String], java.util.List), var3399_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3384-to-var1633=([java.util.StringJoiner], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2100=jdk.jfr.internal.tool.PrettyWriter, var1972=r9, var1568=jdk.jfr.consumer.RecordedMethod, var3880=r1, var1011=$r0, var1545=jdk.jfr.consumer.RecordedClass, var2002=$r2, var769=$r3, var3834=$r4, var3384=java.util.StringJoiner, var51=$r5, var943=", ", var2344=$r6, var122=r7, var1999=$i0, var3336=r8, var3399=java.util.List, var653=$r10, var308=r11, var1033=$z0, var1633=java.lang.Object, var1645=$r12}
; {jdk.jfr.internal.tool.PrettyWriter=var2100, r9=var1972, jdk.jfr.consumer.RecordedMethod=var1568, r1=var3880, $r0=var1011, jdk.jfr.consumer.RecordedClass=var1545, $r2=var2002, $r3=var769, $r4=var3834, java.util.StringJoiner=var3384, $r5=var51, ", "=var943, $r6=var2344, r7=var122, $i0=var1999, r8=var3336, java.util.List=var3399, $r10=var653, r11=var308, $z0=var1033, java.lang.Object=var1633, $r12=var1645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: jdk.jfr.internal.tool.PrettyWriter;	r1 := @parameter0: jdk.jfr.consumer.RecordedMethod;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.jfr.consumer.RecordedMethod: jdk.jfr.consumer.RecordedClass getType()>();	$r3 = virtualinvoke $r2.<jdk.jfr.consumer.RecordedClass: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r4 = virtualinvoke r1.<jdk.jfr.consumer.RecordedMethod: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = new java.util.StringJoiner;	specialinvoke $r5.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(", ");	$r6 = virtualinvoke r1.<jdk.jfr.consumer.RecordedMethod: java.lang.String getDescriptor()>();	r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", ".");	$i0 = virtualinvoke r7.<java.lang.String: int lastIndexOf(java.lang.String)>(")");	r8 = virtualinvoke r7.<java.lang.String: java.lang.String substring(int,int)>(1, $i0);	$r10 = virtualinvoke r9.<jdk.jfr.internal.tool.PrettyWriter: java.util.List decodeDescriptors(java.lang.String,java.lang.String)>(r8, "");	r11 = interfaceinvoke $r10.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r11.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3