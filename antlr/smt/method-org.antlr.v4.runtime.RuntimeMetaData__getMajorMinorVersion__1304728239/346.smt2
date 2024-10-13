(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2887 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2887 null-String)))
(assert true)
(define-const var3747 Int (indexOf/-1037706067 var2887 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 < 0 goto $i7 = (int) -1 
(assert (not (< var3747 0))) ; Negate: Cond: i0 < 0  
(define-const var106 Int (+ var3747 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var2003 Int (indexOf/1426977840 var2887 46 var106)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(46, $i1) 
 ; Statement: goto [?= $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1511 Int (indexOf/-1037706067 var2887 45)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45) 
(assert true)
(define-const var616 Int (length/-134980193 var2887)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2500 Int var616) ; Statement: i5 = $i3 
 ; Statement: if $i4 < 0 goto (branch) 
(assert (< var2003 0)) ; Cond: $i4 < 0 
 ; Statement: if $i2 < 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
(assert (< var1511 0)) ; Cond: $i2 < 0 
(assert (and true (and (>= 0 0) (>= (str.len var2887) var2500) (>= var2500 0))))
(define-const var184 String (substring/-1240304868 var2887 0 var2500)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), indexOf/1426977840=([java.lang.String, int, int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2887=r0, var3952=null_type, var3747=i0, var106=$i1, var2003=$i4, var1511=$i2, var616=$i3, var2500=i5, var184=$r1}
; {r0=var2887, null_type=var3952, i0=var3747, $i1=var106, $i4=var2003, $i2=var1511, $i3=var616, i5=var2500, $r1=var184}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 < 0 goto $i7 = (int) -1;	$i1 = i0 + 1;	$i4 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(46, $i1);	goto [?= $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45)];	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = $i3;	if $i4 < 0 goto (branch);	if $i2 < 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	return $r1
;block_num 5