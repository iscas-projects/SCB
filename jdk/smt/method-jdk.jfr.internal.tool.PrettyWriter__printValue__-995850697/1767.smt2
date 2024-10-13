(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort var1308 0)
(declare-sort var859 0)
(declare-sort var2357 0)
(declare-sort var2915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-650826721 (var2915 String) void)
(declare-fun cast-from-var2717-to-var2915 (var2717) var2915)
(declare-const null-var2717 var2717)
(declare-const null-var1308 var1308)
(declare-const null-var859 var859)
(declare-const null-String String)
(declare-const var129 var2717) ; Statement: r4 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var129 null-var2717)))
(declare-const var2485 var1308) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2485 null-var1308)))
(declare-const var2507 var859) ; Statement: r2 := @parameter1: jdk.jfr.ValueDescriptor 
(assert (not (= var2507 null-var859)))
(declare-const var2869 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2869 null-String)))
 ; Statement: if r0 != null goto $z0 = r0 instanceof jdk.jfr.consumer.RecordedObject 
(assert (not (not (= var2485 null-var1308)))) ; Negate: Cond: r0 != null  
(define-const var2715 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2715)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2715!1 String)
(assert (= var2715!1 ""))
(assert true)
(define-const var3880 String (append/672562846 var2715!1 "N/A")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("N/A") 
(declare-const var2715!2 String)
(assert (= var2715!2 (str.++ var2715!1 "N/A")))
(assert true)
(define-const var3798 String (append/672562846 var3880 var2869)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var3880!1 String)
(assert (= var3880!1 (str.++ var3880 var2869)))
(assert true)
(define-const var1248 String (toString/-2075883882 var3798)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-650826721 (cast-from-var2717-to-var2915 var129) var1248)) ; Statement: virtualinvoke r4.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r25) 

(declare-const var129!1 var2717)
(declare-const var1248!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-650826721=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), cast-from-var2717-to-var2915=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter)}
; {var2717=jdk.jfr.internal.tool.PrettyWriter, var129=r4, var1308=java.lang.Object, var2485=r0, var859=jdk.jfr.ValueDescriptor, var2507=r2, var2869=r13, var2357=null_type, var2715=$r22, var3880=$r23, var3798=$r24, var1248=$r25, var2915=jdk.jfr.internal.tool.StructuredWriter}
; {jdk.jfr.internal.tool.PrettyWriter=var2717, r4=var129, java.lang.Object=var1308, r0=var2485, jdk.jfr.ValueDescriptor=var859, r2=var2507, r13=var2869, null_type=var2357, $r22=var2715, $r23=var3880, $r24=var3798, $r25=var1248, jdk.jfr.internal.tool.StructuredWriter=var2915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: java.lang.Object;	r2 := @parameter1: jdk.jfr.ValueDescriptor;	r13 := @parameter2: java.lang.String;	if r0 != null goto $z0 = r0 instanceof jdk.jfr.consumer.RecordedObject;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("N/A");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r25);	return
;block_num 2