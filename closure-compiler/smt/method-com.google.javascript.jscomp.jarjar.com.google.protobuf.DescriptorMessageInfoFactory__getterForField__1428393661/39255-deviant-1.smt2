(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var626 0)
(declare-sort var1063 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1063_snakeCaseToCamelCase/-1012853538 (String) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var737_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3336 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3336 null-String)))
(define-const var419 String (var1063_snakeCaseToCamelCase/-1012853538 var3336)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r0) 
(define-const var2979 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2979 "get")) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>("get") 
(declare-const var2979!1 String)
(assert (= var2979!1 "get"))
(assert (and true (and (> (str.len var419) 0) (<= 0 0))))
(define-const var873 Int (charAt/698050440 var419 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var747 Int (var737_toUpperCase/1913344327 var873)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
;(assert (append/-1166366385 var2979!1 var747)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2979!2 String)
(assert (str.prefixof var2979!1 var2979!2))
(assert true)
(define-const var3998 Int (length/-134980193 var419)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (and true (and (>= 1 0) (>= (str.len var419) var3998) (>= var3998 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1063_snakeCaseToCamelCase/-1012853538=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), charAt/698050440=([java.lang.String, int], char), var737_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3336=r0, var626=null_type, var1063=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var419=r1, var2979=$r2, var873=$c0, var737=java.lang.Character, var747=$c1, var3998=$i2, var3623=$r3, var1692=$r4}
; {r0=var3336, null_type=var626, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var1063, r1=var419, $r2=var2979, $c0=var873, java.lang.Character=var737, $c1=var747, $i2=var3998, $r3=var3623, $r4=var1692}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: java.lang.String snakeCaseToCamelCase(java.lang.String)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>("get");	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1