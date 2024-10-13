(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2800 0)
(declare-sort var1368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun var1368-init () var1368)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var1368 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2800 var2800)
(declare-const var1285 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1285 null-__Array__Int__Int__)))
(declare-const var2291 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2291 null-Int)))
(declare-const var1538 var2800) ; Statement: r2 := @parameter2: java.time.ZoneId 
(assert (not (= var1538 null-var2800)))
(define-const var3915 Int (+ var2291 16)) ; Statement: $i2 = i0 + 16 
(define-const var702 Int (getLength-Arr-Int-1 var1285)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto $b3 = r0[i0] 
(assert (not (<= var3915 var702))) ; Negate: Cond: $i2 <= $i1  
(define-const var3538 String String-init) ; Statement: $r38 = new java.lang.String 
(define-const var549 Int (getLength-Arr-Int-1 var1285)) ; Statement: $i53 = lengthof r0 
(define-const var1448 Int (- var549 var2291)) ; Statement: $i54 = $i53 - i0 
(assert true)
;(assert (<init>/-1380519146 var3538 var1285 var2291 var1448)) ; Statement: specialinvoke $r38.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i54) 

(declare-const var3538!1 String)
(declare-const var1285!1 (Array Int Int))
(declare-const var2291!1 Int)
(declare-const var1448!1 Int)
(define-const var2845 var1368 var1368-init) ; Statement: $r40 = new java.time.format.DateTimeParseException 
(define-const var3549 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3549)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3549!1 String)
(assert (= var3549!1 ""))
(assert true)
(define-const var1258 String (append/672562846 var3549!1 "illegal input ")) ; Statement: $r10 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var3549!2 String)
(assert (= var3549!2 (str.++ var3549!1 "illegal input ")))
(assert true)
(define-const var2303 String (append/672562846 var1258 var3538!1)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var1258!1 String)
(assert (= var1258!1 (str.++ var1258 var3538!1)))
(assert true)
(define-const var3732 String (toString/-2075883882 var2303)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var2845 var3732 (cast-from-String-to-String var3538!1) 0)) ; Statement: specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r12, $r38, 0) 

(declare-const var2845!1 var1368)
(declare-const var3732!1 String)
(declare-const var3538!2 String)
(declare-const var3308 Int)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), var1368-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1285=r0, var2291=i0, var2800=java.time.ZoneId, var1538=r2, var3915=$i2, var702=$i1, var3538=$r38, var549=$i53, var1448=$i54, var1368=java.time.format.DateTimeParseException, var2845=$r40, var3549=$r39, var1258=$r10, var2303=$r11, var3732=$r12, var3308=0}
; {r0=var1285, i0=var2291, java.time.ZoneId=var2800, r2=var1538, $i2=var3915, $i1=var702, $r38=var3538, $i53=var549, $i54=var1448, java.time.format.DateTimeParseException=var1368, $r40=var2845, $r39=var3549, $r10=var1258, $r11=var2303, $r12=var3732, 0=var3308}
;seq <java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	r2 := @parameter2: java.time.ZoneId;	$i2 = i0 + 16;	$i1 = lengthof r0;	if $i2 <= $i1 goto $b3 = r0[i0];	$r38 = new java.lang.String;	$i53 = lengthof r0;	$i54 = $i53 - i0;	specialinvoke $r38.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i54);	$r40 = new java.time.format.DateTimeParseException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r12, $r38, 0);	throw $r40
;block_num 2