(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3829 0)
(declare-sort var3299 0)
(declare-sort var685 0)
(declare-sort var3707 0)
(declare-sort var3414 0)
(declare-sort var639 0)
(declare-sort var2899 0)
(declare-sort var659 0)
(declare-sort var203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFldList/-709160776 (var3829) var3299)
(declare-fun var3707_stream/-1288525013 (var3707) var685)
(declare-fun cast-from-var3299-to-var3707 (var3299) var3707)
(declare-fun var639_bootstrap$/881998655 () var3414)
(declare-fun var685_map/130902797 (var685 var3414) var685)
(declare-fun var659_joining/-1302177485 (String) var2899)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var685_collect/-2050842585 (var685 var2899) var203)
(declare-fun cast-from-var203-to-String (var203) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3829 var3829)
(declare-const var1178 var3829) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Object 
(assert (not (= var1178 null-var3829)))
(assert true)
(define-const var935 var3299 (getFldList/-709160776 var1178)) ; Statement: $r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Object: java.util.List getFldList()>() 
(define-const var1483 var685 (var3707_stream/-1288525013 (cast-from-var3299-to-var3707 var935))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var3129 var3414 var639_bootstrap$/881998655) ; Statement: $r2 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser$lambda_objectToString_0__275: java.util.function.Function bootstrap$()>() 
(define-const var3022 var685 (var685_map/130902797 var1483 var3129)) ; Statement: $r5 = interfaceinvoke $r3.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r2) 
(define-const var1199 var2899 (var659_joining/-1302177485 (cast-from-String-to-String ", "))) ; Statement: $r4 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>(", ") 
(define-const var2096 var203 (var685_collect/-2050842585 var3022 var1199)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r4) 
(define-const var2903 String (cast-from-var203-to-String var2096)) ; Statement: r7 = (java.lang.String) $r6 
(define-const var3814 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3814 "{")) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>("{") 
(declare-const var3814!1 String)
(assert (= var3814!1 "{"))
(assert true)
(define-const var1388 String (append/672562846 var3814!1 var2903)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3814!2 String)
(assert (= var3814!2 (str.++ var3814!1 var2903)))
(assert true)
(define-const var38 String (append/672562846 var1388 "}")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1388!1 String)
(assert (= var1388!1 (str.++ var1388 "}")))
(assert true)
(define-const var1550 String (toString/-2075883882 var38)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getFldList/-709160776=([com.mysql.cj.x.protobuf.MysqlxExpr$Object], java.util.List), var3707_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3299-to-var3707=([java.util.List], java.util.Collection), var639_bootstrap$/881998655=([], java.util.function.Function), var685_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var659_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var685_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var203-to-String=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3829=com.mysql.cj.x.protobuf.MysqlxExpr$Object, var1178=r0, var3299=java.util.List, var935=$r1, var685=java.util.stream.Stream, var3707=java.util.Collection, var1483=$r3, var3414=java.util.function.Function, var639=com.mysql.cj.xdevapi.ExprUnparser$lambda_objectToString_0__275, var3129=$r2, var3022=$r5, var2899=java.util.stream.Collector, var659=java.util.stream.Collectors, var1199=$r4, var203=java.lang.Object, var2096=$r6, var2903=r7, var3814=$r8, var1388=$r9, var38=$r10, var1550=$r11}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Object=var3829, r0=var1178, java.util.List=var3299, $r1=var935, java.util.stream.Stream=var685, java.util.Collection=var3707, $r3=var1483, java.util.function.Function=var3414, com.mysql.cj.xdevapi.ExprUnparser$lambda_objectToString_0__275=var639, $r2=var3129, $r5=var3022, java.util.stream.Collector=var2899, java.util.stream.Collectors=var659, $r4=var1199, java.lang.Object=var203, $r6=var2096, r7=var2903, $r8=var3814, $r9=var1388, $r10=var38, $r11=var1550}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Object;	$r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Object: java.util.List getFldList()>();	$r3 = interfaceinvoke $r1.<java.util.List: java.util.stream.Stream stream()>();	$r2 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser$lambda_objectToString_0__275: java.util.function.Function bootstrap$()>();	$r5 = interfaceinvoke $r3.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r2);	$r4 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>(", ");	$r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r4);	r7 = (java.lang.String) $r6;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>("{");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1