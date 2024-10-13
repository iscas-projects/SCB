(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2906 0)
(declare-sort var2803 0)
(declare-sort var3332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-522406933 (var2803) String)
(declare-fun cast-from-var2906-to-var2803 (var2906) var2803)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun arr-var2803-init () (Array Int var2803))
(declare-fun host/-1521200206 (var2906) String)
(declare-fun cast-from-String-to-var2803 (String) var2803)
(declare-fun port/-1521200206 (var2906) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2803 (Int) var2803)
(declare-fun hostProperties/-1521200206 (var2906) var3332)
(declare-fun cast-from-var3332-to-var2803 (var3332) var2803)
(declare-fun String_format/1339386452 (String (Array Int var2803)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2906 var2906)
(declare-const null-__Array__Int__var2803__ (Array Int var2803))
(declare-const var3167 var2906) ; Statement: r1 := @this: com.mysql.cj.conf.HostInfo 
(assert (not (= var3167 null-var2906)))
(define-const var1142 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1620 String (toString/-522406933 (cast-from-var2906-to-var2803 var3167))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1142 var1620)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var1142!1 String)
(assert (= var1142!1 var1620))
(define-const var1778 (Array Int var2803) arr-var2803-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(define-const var2506 String (host/-1521200206 var3167)) ; Statement: $r4 = r1.<com.mysql.cj.conf.HostInfo: java.lang.String host> 
(declare-const var1778!1 (Array Int var2803))
(assert (not (= var1778!1 null-__Array__Int__var2803__)))
(assert (= (select var1778!1 0) (cast-from-String-to-var2803 var2506))) ; Statement: $r3[0] = $r4 
(define-const var3464 Int (port/-1521200206 var3167)) ; Statement: $i0 = r1.<com.mysql.cj.conf.HostInfo: int port> 
(define-const var698 Int (Int_valueOf/-1371140006 var3464)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var1778!2 (Array Int var2803))
(assert (not (= var1778!2 null-__Array__Int__var2803__)))
(assert (= (select var1778!2 1) (cast-from-Int-to-var2803 var698))) ; Statement: $r3[1] = $r5 
(define-const var1886 var3332 (hostProperties/-1521200206 var3167)) ; Statement: $r6 = r1.<com.mysql.cj.conf.HostInfo: java.util.Map hostProperties> 
(declare-const var1778!3 (Array Int var2803))
(assert (not (= var1778!3 null-__Array__Int__var2803__)))
(assert (= (select var1778!3 2) (cast-from-var3332-to-var2803 var1886))) ; Statement: $r3[2] = $r6 
(define-const var1000 String (String_format/1339386452 " :: {host: \u0022%s\u0022, port: %d, hostProperties: %s}" var1778!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: {host: \"%s\", port: %d, hostProperties: %s}", $r3) 
(assert true)
;(assert (append/672562846 var1142!1 var1000)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1142!2 String)
(assert (= var1142!2 (str.++ var1142!1 var1000)))
(assert true)
(define-const var592 String (toString/-2075883882 var1142!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2906-to-var2803=([com.mysql.cj.conf.HostInfo], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), arr-var2803-init=([], java.lang.Object[]), host/-1521200206=([com.mysql.cj.conf.HostInfo], java.lang.String), cast-from-String-to-var2803=([java.lang.String], java.lang.Object), port/-1521200206=([com.mysql.cj.conf.HostInfo], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2803=([java.lang.Integer], java.lang.Object), hostProperties/-1521200206=([com.mysql.cj.conf.HostInfo], java.util.Map), cast-from-var3332-to-var2803=([java.util.Map], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2906=com.mysql.cj.conf.HostInfo, var3167=r1, var1142=$r0, var2803=java.lang.Object, var1620=$r2, var1778=$r3, var2506=$r4, var3464=$i0, var698=$r5, var3332=java.util.Map, var1886=$r6, var1000=$r7, var592=$r8}
; {com.mysql.cj.conf.HostInfo=var2906, r1=var3167, $r0=var1142, java.lang.Object=var2803, $r2=var1620, $r3=var1778, $r4=var2506, $i0=var3464, $r5=var698, java.util.Map=var3332, $r6=var1886, $r7=var1000, $r8=var592}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.conf.HostInfo;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = newarray (java.lang.Object)[3];	$r4 = r1.<com.mysql.cj.conf.HostInfo: java.lang.String host>;	$r3[0] = $r4;	$i0 = r1.<com.mysql.cj.conf.HostInfo: int port>;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r3[1] = $r5;	$r6 = r1.<com.mysql.cj.conf.HostInfo: java.util.Map hostProperties>;	$r3[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: {host: \"%s\", port: %d, hostProperties: %s}", $r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1