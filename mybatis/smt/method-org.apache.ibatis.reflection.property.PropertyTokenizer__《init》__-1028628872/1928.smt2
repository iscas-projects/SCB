(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3667 0)
(declare-sort var1887 0)
(declare-sort var670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var670) void)
(declare-fun cast-from-var3667-to-var670 (var3667) var670)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun name/-1582476214 (var3667) String)
(declare-fun children/-1582476214 (var3667) String)
(declare-fun indexedName/-1582476214 (var3667) String)
(declare-const null-var3667 var3667)
(declare-const null-String String)
(declare-const var1037 var3667) ; Statement: r0 := @this: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var1037 null-var3667)))
(declare-const var1838 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1838 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3667-to-var670 var1037))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1037!1 var3667)
(assert true)
(define-const var219 Int (indexOf/-1037706067 var1838 46)) ; Statement: i5 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46) 
(define-const var3537 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 <= $i7 goto r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name> = r1 
(assert (<= var219 var3537)) ; Cond: i5 <= $i7 
(declare-const var1037!2 var3667)
(assert (not (= var1037!2 null-var3667)))
(assert (= (name/-1582476214 var1037!2) var1838)) ; Statement: r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name> = r1 
(declare-const var1037!3 var3667)
(assert (not (= var1037!3 null-var3667)))
(assert (= (children/-1582476214 var1037!3) null-String)) ; Statement: r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String children> = null 
(assert true) ; Non Conditional
(define-const var3733 String (name/-1582476214 var1037!3)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name> 
(declare-const var1037!4 var3667)
(assert (not (= var1037!4 null-var3667)))
(assert (= (indexedName/-1582476214 var1037!4) var3733)) ; Statement: r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String indexedName> = $r2 
(define-const var3576 String (name/-1582476214 var1037!4)) ; Statement: $r3 = r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name> 
(assert true)
(define-const var3487 Int (indexOf/-1037706067 var3576 91)) ; Statement: $i4 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>(91) 
(define-const var721 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i4 <= $i9 goto return 
(assert (<= var3487 var721)) ; Cond: $i4 <= $i9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3667-to-var670=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), name/-1582476214=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), children/-1582476214=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), indexedName/-1582476214=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String)}
; {var3667=org.apache.ibatis.reflection.property.PropertyTokenizer, var1037=r0, var1838=r1, var1887=null_type, var670=java.lang.Object, var219=i5, var3537=$i7, var3733=$r2, var3576=$r3, var3487=$i4, var721=$i9}
; {org.apache.ibatis.reflection.property.PropertyTokenizer=var3667, r0=var1037, r1=var1838, null_type=var1887, java.lang.Object=var670, i5=var219, $i7=var3537, $r2=var3733, $r3=var3576, $i4=var3487, $i9=var721}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r0 := @this: org.apache.ibatis.reflection.property.PropertyTokenizer;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	i5 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46);	$i7 = (int) -1;	if i5 <= $i7 goto r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name> = r1;	r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name> = r1;	r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String children> = null;	$r2 = r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name>;	r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String indexedName> = $r2;	$r3 = r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String name>;	$i4 = virtualinvoke $r3.<java.lang.String: int indexOf(int)>(91);	$i9 = (int) -1;	if $i4 <= $i9 goto return;	return
;block_num 4