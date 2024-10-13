(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun var438-init () var438)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1826383805 (var438 String String Int) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1921 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1921 null-__Array__Int__Int__)))
(declare-const var1227 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1227 null-Int)))
(define-const var1213 Int (+ var1227 12)) ; Statement: $i2 = i0 + 12 
(define-const var3099 Int (getLength-Arr-Int-1 var1921)) ; Statement: $i1 = lengthof r0 
 ; Statement: if $i2 <= $i1 goto $b3 = r0[i0] 
(assert (not (<= var1213 var3099))) ; Negate: Cond: $i2 <= $i1  
(define-const var1140 String String-init) ; Statement: $r38 = new java.lang.String 
(define-const var1154 Int (getLength-Arr-Int-1 var1921)) ; Statement: $i59 = lengthof r0 
(define-const var3234 Int (- var1154 var1227)) ; Statement: $i60 = $i59 - i0 
(assert true)
;(assert (<init>/-1380519146 var1140 var1921 var1227 var3234)) ; Statement: specialinvoke $r38.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i60) 

(declare-const var1140!1 String)
(declare-const var1921!1 (Array Int Int))
(declare-const var1227!1 Int)
(declare-const var3234!1 Int)
(define-const var3442 var438 var438-init) ; Statement: $r40 = new java.time.format.DateTimeParseException 
(define-const var1715 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1715)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1715!1 String)
(assert (= var1715!1 ""))
(assert true)
(define-const var144 String (append/672562846 var1715!1 "illegal input ")) ; Statement: $r4 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ") 
(declare-const var1715!2 String)
(assert (= var1715!2 (str.++ var1715!1 "illegal input ")))
(assert true)
(define-const var1826 String (append/672562846 var144 var1140!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var144!1 String)
(assert (= var144!1 (str.++ var144 var1140!1)))
(assert true)
(define-const var2631 String (toString/-2075883882 var1826)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1826383805 var3442 var2631 (cast-from-String-to-String var1140!1) 0)) ; Statement: specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r6, $r38, 0) 

(declare-const var3442!1 var438)
(declare-const var2631!1 String)
(declare-const var1140!2 String)
(declare-const var2874 Int)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), var438-init=([], java.time.format.DateTimeParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1826383805=([java.time.format.DateTimeParseException, java.lang.String, java.lang.CharSequence, int], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1921=r0, var1227=i0, var1213=$i2, var3099=$i1, var1140=$r38, var1154=$i59, var3234=$i60, var438=java.time.format.DateTimeParseException, var3442=$r40, var1715=$r39, var144=$r4, var1826=$r5, var2631=$r6, var2874=0}
; {r0=var1921, i0=var1227, $i2=var1213, $i1=var3099, $r38=var1140, $i59=var1154, $i60=var3234, java.time.format.DateTimeParseException=var438, $r40=var3442, $r39=var1715, $r4=var144, $r5=var1826, $r6=var2631, 0=var2874}
;seq <java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	$i2 = i0 + 12;	$i1 = lengthof r0;	if $i2 <= $i1 goto $b3 = r0[i0];	$r38 = new java.lang.String;	$i59 = lengthof r0;	$i60 = $i59 - i0;	specialinvoke $r38.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, $i60);	$r40 = new java.time.format.DateTimeParseException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<java.time.format.DateTimeParseException: void <init>(java.lang.String,java.lang.CharSequence,int)>($r6, $r38, 0);	throw $r40
;block_num 2