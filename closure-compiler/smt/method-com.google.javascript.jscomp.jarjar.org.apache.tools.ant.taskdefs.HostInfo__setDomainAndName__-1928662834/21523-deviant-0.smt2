(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3893 0)
(declare-sort var2658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun setProperty/110387416 (var3893 String String) void)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3893 var3893)
(declare-const null-String String)
(declare-const var1190 var3893) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var1190 null-var3893)))
(declare-const var2054 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2054 null-String)))
(assert true)
(define-const var3158 Int (indexOf/-1037706067 var2054 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", r0) 
(assert (not (<= var3158 0))) ; Negate: Cond: i0 <= 0  
(assert (not (and true (and (>= 0 0) (>= (str.len var2054) var3158) (>= var3158 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), setProperty/110387416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, java.lang.String, java.lang.String], void), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3893=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var1190=r1, var2054=r0, var2658=null_type, var3158=i0, var109=$r2, var3058="NAME", var538=$i1, var635=$r3, var1756="DOMAIN"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var3893, r1=var1190, r0=var2054, null_type=var2658, i0=var3158, $r2=var109, "NAME"=var3058, $i1=var538, $r3=var635, "DOMAIN"=var1756}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 <= 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", r0);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", $r2);	$i1 = i0 + 1;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("DOMAIN", $r3);	goto [?= return];	return
;block_num 3