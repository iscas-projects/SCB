(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3868 0)
(declare-sort var3323 0)
(declare-sort var1187 0)
(declare-sort var2 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3323_iterator/-912451715 (var3323) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2-init () var2)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2 String) void)
(declare-const null-var3868 var3868)
(declare-const null-var3323 var3323)
(declare-const null-String String)
(declare-const var714 var3868) ; Statement: r33 := @this: jdk.jfr.consumer.RecordedObject 
(assert (not (= var714 null-var3868)))
(declare-const var1892 var3323) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1892 null-var3323)))
(declare-const var1373 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1373 null-String)))
(declare-const var1854 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1854 null-String)))
(assert true)
(define-const var1321 Int (indexOf/-1209756239 var1373 ".")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
 ; Statement: if i0 <= 0 goto r38 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert (not (<= var1321 0))) ; Negate: Cond: i0 <= 0  
(assert (not (and true (and (>= 0 0) (>= (str.len var1373) var1321) (>= var1321 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var3323_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3868=jdk.jfr.consumer.RecordedObject, var714=r33, var3323=java.util.List, var1892=r1, var1373=r0, var1187=null_type, var1854=r10, var1321=i0, var159=r36, var1953=$i1, var1254=r37, var2121=r22, var2769=$z3, var2=java.lang.IllegalArgumentException, var3303=$r23, var3784=$r24, var3647=$r25, var1866=$r26, var359=$r27, var2078=$r28}
; {jdk.jfr.consumer.RecordedObject=var3868, r33=var714, java.util.List=var3323, r1=var1892, r0=var1373, null_type=var1187, r10=var1854, i0=var1321, r36=var159, $i1=var1953, r37=var1254, r22=var2121, $z3=var2769, java.lang.IllegalArgumentException=var2, $r23=var3303, $r24=var3784, $r25=var3647, $r26=var1866, $r27=var359, $r28=var2078}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r33 := @this: jdk.jfr.consumer.RecordedObject;	r1 := @parameter0: java.util.List;	r0 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	if i0 <= 0 goto r38 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	r36 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$i1 = i0 + 1;	r37 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	r22 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke r22.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r23 = new java.lang.IllegalArgumentException;	$r23 = new java.lang.IllegalArgumentException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to get unknown field \"");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r36);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28);	throw $r23
;block_num 4