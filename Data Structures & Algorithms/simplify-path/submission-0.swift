class Solution {
    func simplifyPath(_ path: String) -> String {
        var stack = [String]()

        var components = path.components(separatedBy: "/")

        for tok in components {
            guard !tok.isEmpty, tok != "." else { continue }
            
            if tok == ".." { 
                if !stack.isEmpty { stack.removeLast() }
            } else {
                stack.append(tok)
            }
        }

        return "/\(stack.joined(separator: "/"))"
    }
}