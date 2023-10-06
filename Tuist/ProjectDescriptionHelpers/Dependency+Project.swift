//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 9oya on 10/5/23.
//

import ProjectDescription

extension TargetDependency {
    public enum Project {}
}

public extension TargetDependency.Project {
    static let Feature = TargetDependency.project(target: "Feature",
                                                  path: .relativeToRoot("Projects/Feature"))
    static let Service = TargetDependency.project(target: "Service",
                                                  path: .relativeToRoot("Projects/Service"))
    static let ThirdPartyLib = TargetDependency.project(target: "ThirdPartyLib",
                                                  path: .relativeToRoot("Projects/ThirdPartyLib"))
}
