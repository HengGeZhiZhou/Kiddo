package com.cs.kiddo.shiro;

import com.cs.kiddo.entity.User;
import com.cs.kiddo.exception.DefinedException;
import com.cs.kiddo.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;

public class UserRealm  extends AuthorizingRealm {


    @Resource(name = "userServiceImpl")
    private UserService userService;

    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken usernamePasswordToken= (UsernamePasswordToken) authenticationToken;

        try {
            User user=userService.getUser(usernamePasswordToken.getUsername());

            Object pricipal=user.getAccount();
            Object credentials=user.getPassword();
            String realmName=getName();
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(pricipal,credentials,realmName);
            return info;
        }catch (DefinedException e){
            throw new UnknownAccountException("----用户不存在----");
        }
    }
}
